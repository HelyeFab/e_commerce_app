import 'package:e_commerce_app/features/authentication/controllers/controllers.onboarding/onboarding_controller.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:get/get.dart';




class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController()); 
    return  Scaffold(
      body: Stack(
        children:  [
          /* -------------------------------------------------------------------------- */
          /*                         Horizontal Scrollable Pages                        */
          /* -------------------------------------------------------------------------- */
         PageView( 
          controller: controller.pageController,
          // we could pass the index to updatePageIndicator
          // but if we don't it will automatically pass the index.
          onPageChanged: controller.updatePageIndicator,
              children:  [
                // Page 1
                OnBoardingPage(
                  image: TImages.onBoardingImage1,
                  title: TTexts.onBoardingTitle1,
                  subTitle: TTexts.onBoardingSubTitle1,
                ),
                // Page 2
                OnBoardingPage(
                  image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subTitle: TTexts.onBoardingSubTitle2,
                ),
                // Page 3
                OnBoardingPage(
                  image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subTitle: TTexts.onBoardingSubTitle3,
                ),
              ],
              ),
        
          /* -------------------------------------------------------------------------- */
          /*                                 Skip Button                                */
          /* -------------------------------------------------------------------------- */
          const OnBoardingSkip(),

          /* -------------------------------------------------------------------------- */
          /*                       Dot Navigation Smooth Indicator                      */
          /* -------------------------------------------------------------------------- */
          const OnBoardingDotNavigation(),

          /* -------------------------------------------------------------------------- */
          /*                               Circular Button                              */
          /* -------------------------------------------------------------------------- */
          const OnBoardingNextButton(),
        ],
        )
    );
  }}
