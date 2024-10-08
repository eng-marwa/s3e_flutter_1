import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:s3e_flutter/color_manager.dart';
import 'package:s3e_flutter/model/onboarding_data.dart';
import 'package:s3e_flutter/text_styles.dart';
import 'continue_custom_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _pageIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.continueTextColor,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 130, left: 44, right: 44, bottom: 62),
        child: PageView.builder(
            controller: _pageController,
            onPageChanged: (value) {
              _pageIndex = value;
            },
            itemCount: OnboardingData.onboardingPagesData.length,
            itemBuilder: (context, index) => Center(
                    child: Column(
                  children: [
                    SvgPicture.asset(
                      OnboardingData.onboardingPagesData[index].svgImage,
                      height: 340,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      OnboardingData.onboardingPagesData[index].title,
                      style: TextStyles.onboardingTitle,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      OnboardingData.onboardingPagesData[index].body,
                      style: TextStyles.onboardingBody,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 38,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: OnboardingData.onboardingPagesData
                            .map(
                              (e) => Container(
                                margin: const EdgeInsets.all(10),
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                    color: _pageIndex ==
                                            OnboardingData.onboardingPagesData
                                                .indexOf(e)
                                        ? ColorManager.selectedPageColor
                                        : ColorManager.unSelectedPageColor,
                                    shape: BoxShape.circle),
                              ),
                            )
                            .toList()),
                    const SizedBox(
                      height: 50,
                    ),
                    ContinueCustomButton(
                      onPressedCallback: () => _pageController.animateToPage(
                          ++_pageIndex,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut),
                    )
                    // ElevatedButton(
                    //     style: AppButtonTheme.continueButtonStyle,
                    //     onPressed: () {},
                    //     child: Text(
                    //       'Continue',
                    //       style: TextStyles.continueText,
                    //     ))
                  ],
                ))),
      ),
    );
  }
}
