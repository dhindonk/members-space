import 'package:flutter/material.dart';
import '../../../../core/core.dart';

class OnboardingIndicator extends StatelessWidget {
  final int length;
  final int currentPage;

  const OnboardingIndicator({
    super.key,
    required this.length,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        length,
        (index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            height: 5,
            width: currentPage == index ? 15 : 5,
            decoration: BoxDecoration(
              color: currentPage == index ? AppColors.primary : AppColors.grey,
              borderRadius: BorderRadius.circular(5),
            ),
          );
        },
      ),
    );
  }
}
