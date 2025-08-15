import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_center_app/core/routing/routes.dart';
import 'package:medical_center_app/features/auth/presentation/views/init_auth_view.dart';
import 'package:medical_center_app/features/auth/presentation/views/login_view.dart';

class AppRouting {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const InitAuthView(),
      ),
      GoRoute(
        path: Routes.loginView,
        builder: (BuildContext context, GoRouterState state) =>
            const LoginView(),
      ),
    ],
  );
}
