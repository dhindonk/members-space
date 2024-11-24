import 'package:flutter/material.dart'; 
import '../../../../core/assets/assets.gen.dart';
import '../../../core/components/buttons.dart';
import '../../auth/pages/login.dart';
import '../models/onboarding_model.dart';
import '../widgets/onboarding_content.dart';
import '../widgets/onboarding_indicator.dart';

class OnboardingPage extends StatefulWidget {
  OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentPage = 0;
  final pageController = PageController();

  final onboardingData = [
    OnboardingModel(
      image: Assets.svg.onBoarding1.path,
      title: 'Selamat datang di Members Space',
      desc:
          'Aplikasi untuk mempermudah pengelolaan data member dan aktivitas lainnya dalam satu platform yang aman dan terorganisir.',
    ),
    OnboardingModel(
      image: Assets.svg.onBoarding2.path,
      title: 'Kelola Anggota',
      desc:
          'Dengan fitur ini, anggota lab dapat dilihat, dikelola, dan dipantau perkembangannya secara efektif.',
    ),
    OnboardingModel(
      image: Assets.svg.onBoarding3.path,
      title: 'Forum Diskusi',
      desc:
          'Gunakan Forum Diskusi untuk berbagi ide, berdiskusi, dan memperkuat kolaborasi antar anggota di dalam lab.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    void navigate() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                    child: Image.asset(
                      Assets.logo.logoWhitePng.path,
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'MEMBERS\nSPACE',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            OnboardingContent(
              pageController: pageController,
              onPageChanged: (index) {
                currentPage = index;
                setState(() {});
              },
              contents: onboardingData,
            ),
            OnboardingIndicator(
              length: onboardingData.length,
              currentPage: currentPage,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Button.filled(
                onPressed: () {
                  if (currentPage < onboardingData.length - 1) {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                    currentPage++;
                    setState(() {});
                  } else {
                    navigate();
                  }
                },
                label: currentPage < onboardingData.length - 1
                    ? 'Lanjut'
                    : 'Masuk',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
