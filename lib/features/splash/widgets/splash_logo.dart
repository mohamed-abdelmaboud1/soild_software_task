import 'package:flutter/material.dart';
import 'package:soild_software_task/core/utils/app_images.dart';

import '../../../core/widgets/custom_image.dart';

class SplashLogo extends StatelessWidget {
  final Animation<double> animationController;

  const SplashLogo({required this.animationController, super.key});

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animationController,
      child: CustomImage(
        AppImages.imagesSoildSoftwareLogo,
        width: 150,
        height: 150,
      ),
    );
  }
}
