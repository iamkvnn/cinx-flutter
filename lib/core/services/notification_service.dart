import 'dart:convert';
import 'dart:io';

import 'package:bot_toast/bot_toast.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:stomp_dart_client/stomp_dart_client.dart';

import 'token_storage.dart';

@lazySingleton
class NotificationService {
  final TokenStorage _tokenStorage;
  final Dio _dio;
  StompClient? _stompClient;

  NotificationService(this._tokenStorage, @Named('authenticatedDio') this._dio);

  Future<void> initialize() async {
    await _initFCM();
    await _initStomp();
  }

  void dispose() {
    _stompClient?.deactivate();
  }

  Future<void> _initFCM() async {
    if (kIsWeb) return; // Skip FCM on web for simplicity unless config is set

    try {
      FirebaseMessaging messaging = FirebaseMessaging.instance;

      NotificationSettings settings = await messaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true,
      );

      if (settings.authorizationStatus == AuthorizationStatus.authorized) {
        String? token = await messaging.getToken();
        if (token != null) {
          await _updateFCMToken(token);
        }

        FirebaseMessaging.instance.onTokenRefresh.listen((newToken) {
          _updateFCMToken(newToken);
        });

        FirebaseMessaging.onMessage.listen((RemoteMessage message) {
          final title = message.notification?.title ?? 'New Notification';
          final body = message.notification?.body ?? '';
          _showToast("🔔 $title\n$body");
        });
      }
    } catch (e) {
      debugPrint('FCM Initialization Error: $e');
    }
  }

  Future<void> _updateFCMToken(String fcmToken) async {
    try {
      final deviceInfo = kIsWeb
          ? 'Web'
          : (Platform.isAndroid
                ? 'Android'
                : (Platform.isIOS ? 'iOS' : 'Desktop'));
      await _dio.post(
        '/api/v1/users/device-tokens',
        data: {"fcmToken": fcmToken, "deviceInfo": deviceInfo},
      );
    } catch (e) {
      debugPrint('Failed to update FCM token: $e');
    }
  }

  Future<void> _initStomp() async {
    final token = await _tokenStorage.getAccessToken();
    if (token == null) return;

    _stompClient?.deactivate();

    _stompClient = StompClient(
      config: StompConfig(
        url: 'wss://api.shinyjewelry.shop/ws/notifications',
        stompConnectHeaders: {'Authorization': 'Bearer $token'},
        webSocketConnectHeaders: {'Authorization': 'Bearer $token'},
        onConnect: _onStompConnect,
        onWebSocketError: (dynamic error) =>
            debugPrint('Stomp WS Error: $error'),
      ),
    );

    _stompClient?.activate();
  }

  void _onStompConnect(StompFrame frame) {
    debugPrint('Stomp Connected');
    _stompClient?.subscribe(
      destination: '/user/queue/notifications',
      callback: (StompFrame frame) {
        if (frame.body != null) {
          try {
            final data = jsonDecode(frame.body!);
            final msg =
                data['message'] ??
                data['content'] ??
                data['title'] ??
                frame.body;
            _showToast("🔔 $msg");
          } catch (e) {
            _showToast("🔔 ${frame.body}");
          }
        }
      },
    );
  }

  void _showToast(String message) {
    BotToast.showSimpleNotification(
      title: message,
      duration: const Duration(seconds: 4),
      crossPage: true,
      hideCloseButton: false,
    );
  }
}
