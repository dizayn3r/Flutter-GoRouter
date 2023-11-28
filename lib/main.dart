import 'package:flutter/material.dart';
import 'package:flutter_go_router/routes/app_routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.router,
      theme: ThemeData(
        textTheme: GoogleFonts.quicksandTextTheme(),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          toolbarHeight: kToolbarHeight,
        ),
      ),
    );
  }
}
