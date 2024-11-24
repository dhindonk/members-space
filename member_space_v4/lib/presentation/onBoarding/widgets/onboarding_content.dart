import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/core.dart';
import '../models/onboarding_model.dart';

class OnboardingContent extends StatelessWidget {
  final PageController pageController;
  final void Function(int index) onPageChanged;
  final List<OnboardingModel> contents;

  const OnboardingContent({
    super.key,
    required this.pageController,
    required this.onPageChanged,
    required this.contents,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        onPageChanged: onPageChanged,
        itemCount: contents.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .3,
                  child: SvgPicture.asset(
                    contents[index].image,
                  ),
                ),
                const SizedBox(height: 20),
                Flexible(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          contents[index].title,
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).textScaler.scale(16),
                            color: AppColors.textColor,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          contents[index].desc,
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).textScaler.scale(14),
                            color: AppColors.textColor,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
