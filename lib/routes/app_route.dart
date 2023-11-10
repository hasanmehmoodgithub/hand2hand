
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hand2hand/bottom_bar_screen/dashboard.dart';
import 'package:hand2hand/login_screen/login_screen.dart';
import 'package:hand2hand/register_screen/register_with_email/confirm_password_email_register_screen.dart';
import 'package:hand2hand/register_screen/register_with_number/crea_un_nombre_screen.dart';
import 'package:hand2hand/register_screen/register_with_number/quien_eres_screen.dart';
import 'package:hand2hand/register_screen/register_with_number/register_with_number_screen.dart';


import '../register_screen/register_with_email/register_with_email_screen.dart';
import '../splash_screen/splash_screen.dart';
import 'app_screen.dart';

class AppRoutes {
  static GoRouter get router => _router;
  static final GoRouter _router = GoRouter(
      initialLocation: "/",
      errorBuilder: (context, state) => const Text("error"),
      debugLogDiagnostics: true,
      routes: <GoRoute>[

        GoRoute(
            name: AppScreen.splashScreen,
            path: "/",
            builder: (BuildContext context, GoRouterState state) {
              return  SplashScreen();
            }),

        GoRoute(
            name: AppScreen.loginScreen,
            path: "/${AppScreen.loginScreen}",
            builder: (BuildContext context, GoRouterState state) {
              return  LoginScreen();
            }),


        GoRoute(
            name: AppScreen.dashboardScreen,
            path: "/${AppScreen.dashboardScreen}",
            builder: (BuildContext context, GoRouterState state) {
              return  DashboardScreen();
            }),
        GoRoute(
            name: AppScreen.confirmPasswordEmailRegisterScreen,
            path: "/${AppScreen.confirmPasswordEmailRegisterScreen}",
            builder: (BuildContext context, GoRouterState state) {
              return  ConfirmPasswordEmailRegisterScreen();
            }),
        GoRoute(
            name: AppScreen.registerWithEmail,
            path: "/${AppScreen.registerWithEmail}",
            builder: (BuildContext context, GoRouterState state) {
              return  RegisterWithEmailScreen();
            }),
        GoRoute(
            name: AppScreen.creaUnNombreScreen,
            path: "/${AppScreen.creaUnNombreScreen}",
            builder: (BuildContext context, GoRouterState state) {
              return  CreaUnNombreScreen();
            }),
        GoRoute(
            name: AppScreen.quienEresScreen,
            path: "/${AppScreen.quienEresScreen}",
            builder: (BuildContext context, GoRouterState state) {
              return  QuienEresScreen();
            }),
        GoRoute(
            name: AppScreen.registerWithNumberScreen,
            path: "/${AppScreen.registerWithNumberScreen}",
            builder: (BuildContext context, GoRouterState state) {
              return  RegisterWithNumberScreen();
            }),

      ]);

  static initializeRouteAccordingToAppState() {
    return "/${AppScreen.splashScreen}";
  }
}

