import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hand2hand/routes/app_route.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: AppRoutes.router.routerDelegate,
        routeInformationParser: AppRoutes.router.routeInformationParser,
        routeInformationProvider:
        AppRoutes.router.routeInformationProvider,

      theme:ThemeData(

          fontFamily: GoogleFonts.nunito().fontFamily,



      )

    );
  }
}


