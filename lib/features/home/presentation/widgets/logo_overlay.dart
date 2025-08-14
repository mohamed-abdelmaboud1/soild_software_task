import 'package:flutter/material.dart';
import 'package:soild_software_task/core/utils/app_images.dart';
import 'package:soild_software_task/core/widgets/custom_image.dart';

class LogoOverlay extends StatelessWidget {
  const LogoOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: Center(
        child: CustomImage(AppImages.imagesAppLogo, width: 100, height: 100),
      ),
    );
  }
}
