import 'package:flutter/material.dart';
import 'package:members_space_v5/presentation/auth/pages/login_page.dart';
import 'package:members_space_v5/presentation/dashboard/pages/dashboard_page.dart';
import 'package:members_space_v5/presentation/onBoarding/pages/onboarding_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/core.dart';
import '../data/datasources/auth_local_datasource.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkAuthStatus();
  }

  Future<void> _checkAuthStatus() async {
    await Future.delayed(const Duration(seconds: 2));

    final isFirstInstall = await AuthLocalDatasource().isFirstInstall();
    final isAuth = await AuthLocalDatasource().isAuth();
    print("==================================================");
    print(isFirstInstall);
    print("==================================================");
    print(isAuth);
    print("==================================================");
    if (isFirstInstall) {
      // if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingPage(),
        ),
      );
      return;
    }

    if (isAuth) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => DashboardPage(
            currentTab: 0,
          ),
        ),
      );
    } else {
      // if (!mounted) return;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => LoginPage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
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
