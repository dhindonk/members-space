import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:members_space_v2/presentation/onBoarding/pages/onboarding_page.dart';

import '../core/core.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 6),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingPage(),
        ),
      ),
    );

    return Scaffold(
      body: Container(
        width: fullWidth(context),
        color: AppColors.white,
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.secondary,
              image: DecorationImage(
                image: AssetImage(Assets.logo.logoWhitePng.path),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: AppColors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Supported by ',
                    style: TextStyle(
                      fontSize: 13,
                      color: AppColors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Assets.logo.logoUnpak.image(width: 25)
                ],
              ),
              Text(
                'V1.0.0',
                style: TextStyle(
                  fontSize: 13,
                  color: AppColors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
