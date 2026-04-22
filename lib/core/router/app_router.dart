import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../features/auth/presentation/bloc/auth_state.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/courses/presentation/pages/course_list_page.dart';
import '../../features/courses/presentation/pages/course_detail_page.dart';
import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../../features/users/presentation/pages/user_list_page.dart';
import '../../features/vouchers/presentation/pages/voucher_list_page.dart';
import '../../features/notifications/presentation/pages/notification_page.dart';
import '../../features/users/presentation/pages/profile_page.dart';
import '../../injection_container.dart';

@lazySingleton
class AppRouter {
  final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>();

  GoRouter get router => GoRouter(
        navigatorKey: _rootNavigatorKey,
        initialLocation: '/dashboard',
        redirect: (context, state) {
          final authState = context.read<AuthBloc>().state;
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
          if (isPending) return null;

          if (!isAuthenticated && !isOnLogin) return '/login';
          if (isAuthenticated && isOnLogin) return '/dashboard';

          return null;
        },
        refreshListenable:
            _AuthStateListenable(getIt<AuthBloc>()),
        routes: [
          GoRoute(
            path: '/login',
            builder: (context, state) => const LoginPage(),
          ),
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
class _AuthStateListenable extends ChangeNotifier {
  _AuthStateListenable(this._bloc) {
    _bloc.stream.listen((_) => notifyListeners());
  }

  final AuthBloc _bloc;
}
