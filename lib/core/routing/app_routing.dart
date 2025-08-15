import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_center_app/features/auth/presentation/views/init_auth_view.dart';

class AppRouting {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const InitAuthView(),
      ),
    ],
  );
}
