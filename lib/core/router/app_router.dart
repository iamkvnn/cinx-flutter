import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:injectable/injectable.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../features/auth/presentation/bloc/auth_state.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/courses/presentation/pages/course_list_page.dart';
import '../../features/courses/presentation/pages/course_detail_page.dart';
import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../../features/users/presentation/pages/user_list_page.dart';
import '../../features/vouchers/presentation/pages/voucher_list_page.dart';
import '../../features/categories/presentation/pages/category_list_page.dart';
import '../../features/notifications/presentation/pages/notification_page.dart';
import '../../features/users/presentation/pages/profile_page.dart';
import '../../features/users/presentation/pages/instructor_list_page.dart';
import '../../features/users/presentation/pages/instructor_detail_page.dart';
import '../../features/users/data/models/user_dto.dart';

@lazySingleton
class AppRouter {
  final AuthBloc _authBloc;

  AppRouter(this._authBloc);
  final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>();

  GoRouter get router => GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/dashboard',
    observers: [BotToastNavigatorObserver()],
    redirect: (context, state) {
      final authState = _authBloc.state;
      final isAuthenticated = authState.maybeMap(
        authenticated: (_) => true,
        orElse: () => false,
      );
      final isPending = authState.maybeMap(
        initial: (_) => true,
        loading: (_) => true,
        orElse: () => false,
      );
      final isOnLogin = state.matchedLocation == '/login';

      // While checking auth status, don't redirect
      if (isPending) {
        return isOnLogin ? null : '/login';
      }

      if (!isAuthenticated && !isOnLogin) return '/login';
      if (isAuthenticated && isOnLogin) return '/dashboard';

      return null;
    },
    refreshListenable: GoRouterRefreshStream(_authBloc.stream),
    routes: [
      GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
      GoRoute(
        path: '/dashboard',
        builder: (context, state) => const DashboardPage(),
      ),
      GoRoute(
        path: '/courses',
        builder: (context, state) => const CourseListPage(),
        routes: [
          GoRoute(
            path: ':id',
            builder: (context, state) {
              final id = state.pathParameters['id']!;
              return CourseDetailPage(courseId: id);
            },
          ),
        ],
      ),
      GoRoute(
        path: '/users',
        builder: (context, state) => const UserListPage(),
      ),
      GoRoute(
        path: '/instructors',
        builder: (context, state) => const InstructorListPage(),
        routes: [
          GoRoute(
            path: ':id',
            builder: (context, state) {
              final user = state.extra as UserDto?;
              if (user == null) {
                return const InstructorListPage(); // Fallback if no user object
              }
              return InstructorDetailPage(user: user);
            },
          ),
        ],
      ),
      GoRoute(
        path: '/categories',
        builder: (context, state) => const CategoryListPage(),
      ),
      GoRoute(
        path: '/vouchers',
        builder: (context, state) => const VoucherListPage(),
      ),
      GoRoute(
        path: '/notifications',
        builder: (context, state) => const NotificationPage(),
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => const ProfilePage(),
      ),
    ],
  );
}

/// Bridges BLoC state changes into GoRouter's [refreshListenable].
class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream stream) {
    _subscription = stream.listen((_) => notifyListeners());
  }

  late final StreamSubscription _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
