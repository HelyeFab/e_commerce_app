import 'package:e_commerce_app/features/authentication/controllers/controllers.onboarding/onboarding_controller.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          // Skip to the last page
          OnBoardingController.instance.skipPage();
        },
        child: Text(TTexts.skip, style: Theme.of(context).textTheme.labelLarge),
      ),
    );
  }
}
