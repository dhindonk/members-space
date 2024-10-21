import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:members_space_v3/presentation/auth/pages/login.dart';
import 'package:members_space_v3/presentation/auth/pages/login_page.dart';
import 'package:members_space_v3/presentation/home/home.dart';
import 'package:members_space_v3/presentation/splash_screen.dart';
import 'core/core.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        textTheme: GoogleFonts.quicksandTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme: AppBarTheme(
          color: AppColors.white,
          titleTextStyle: GoogleFonts.quicksand(
            color: AppColors.textColor,
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
          iconTheme: const IconThemeData(
            color: AppColors.textColor,
          ),
          centerTitle: true,
          shape: Border(
            bottom: BorderSide(
              color: AppColors.stroke,
            ),
          ),
        ),
      ),
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}
