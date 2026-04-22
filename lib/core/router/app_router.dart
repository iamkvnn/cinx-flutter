import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/courses/presentation/pages/course_list_page.dart';
import '../../features/courses/presentation/pages/course_detail_page.dart';

@lazySingleton
class AppRouter {
  final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

  GoRouter get router => GoRouter(
        navigatorKey: _rootNavigatorKey,
        initialLocation: '/courses', // Will redirect to dashboard if authenticated
        routes: [
          GoRoute(
            path: '/login',
            builder: (context, state) => const LoginPage(),
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
            path: '/dashboard',
            builder: (context, state) => const Scaffold(
              body: Center(child: Text('Dashboard under construction')),
            ),
          ),
        ],
        redirect: (context, state) {
          // This will be enhanced by AuthBloc StreamListener in actual App initialization
          return null;
        },
      );
}
