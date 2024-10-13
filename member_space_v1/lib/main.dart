import 'package:flutter/material.dart';
import 'package:p3_d/ui/splash_screen.dart';
import 'core/core.dart';

void main() {
  runApp( const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SplashScreen()
      ),
    );
  }
}
