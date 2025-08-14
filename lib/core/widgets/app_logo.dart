import 'package:flutter/material.dart';

import '../utils/app_images.dart';
import 'custom_image.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    this.height = 100,
    this.color = const Color(0xffffffff),
  });
  final double? height;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return CustomImage(
      AppImages.imagesSoildSoftwareLogo,
      height: height,
      color: color,
    );
  }
}
