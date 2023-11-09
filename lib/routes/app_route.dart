
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hand2hand/bottom_bar_screen/dashboard.dart';
import 'package:hand2hand/login_screen/login_screen.dart';


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


      ]);

  static initializeRouteAccordingToAppState() {
    return "/${AppScreen.splashScreen}";
  }
}

