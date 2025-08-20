import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_center_app/core/routing/routes.dart';
// import 'package:medical_center_app/features/auth/presentation/views/init_auth_view.dart';
import 'package:medical_center_app/features/auth/presentation/views/login_view.dart';
import 'package:medical_center_app/features/auth/presentation/views/set_password_view.dart';
import 'package:medical_center_app/features/auth/presentation/views/signup_view.dart';
import 'package:medical_center_app/features/doctor_info_view/presentation/views/doctor_info_view.dart';
import 'package:medical_center_app/features/home/presentation/views/home_view.dart';
import 'package:medical_center_app/features/main_view/presentation/views/main_view.dart';

class AppRouting {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      /// TODO: Change this later to InitAuthView
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const MainView(),
      ),
      GoRoute(
        path: Routes.loginView,
        builder: (BuildContext context, GoRouterState state) =>
            const LoginView(),
      ),
      GoRoute(
        path: Routes.signupView,
        builder: (BuildContext context, GoRouterState state) =>
            const SignupView(),
      ),
      GoRoute(
        path: Routes.setPasswordView,
        builder: (BuildContext context, GoRouterState state) =>
            const SetPasswordView(),
      ),
      GoRoute(
        path: Routes.mainView,
        builder: (BuildContext context, GoRouterState state) =>
            const MainView(),
      ),
      GoRoute(
        path: Routes.homeView,
        builder: (BuildContext context, GoRouterState state) =>
            const HomeView(),
      ),
      GoRoute(
        path: Routes.doctorInfoView,
        builder: (BuildContext context, GoRouterState state) =>
            const DoctorInfoView(),
      ),
    ],
  );
}
