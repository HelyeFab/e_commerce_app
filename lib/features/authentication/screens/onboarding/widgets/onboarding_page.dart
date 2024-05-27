import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  final String image, title, subTitle;

  OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 2/3,
      child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            Image.asset(image),
            const SizedBox(height: TSizes.defaultSpace),
            Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: TSizes.defaultSpace),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
