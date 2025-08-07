import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/core/utilies/app_images.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Image.asset(
            // alignment: Alignment.topLeft,
            AppImages.upSplash,
            width: 265,
            height: 252,
          ),
        ),
        const Spacer(),
        Center(
          child: JelloIn(
            duration: const Duration(seconds: 3),
            child: Image.asset(
              AppImages.logo,
              width: 231,
              height: 59,
            ),
          ),
        ),
        const Spacer(),
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            // alignment: Alignment.bottomRight,
            AppImages.downloadSplash,
            width: 265,
            height: 252,
          ),
        ),
      ],
    );
  }
}
