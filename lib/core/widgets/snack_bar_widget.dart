import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:soild_software_task/core/extensions/app_colors_extension.dart';

import '../enums/snack_bar_type.dart';
import '../utils/app_images.dart';
import '../utils/app_styles.dart';

class SnackBarWidget extends StatelessWidget {
  final String message;
  final SnackBarType type;

  const SnackBarWidget({super.key, required this.message, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: _buildBoxDecoration(),
      child: Stack(
        clipBehavior: Clip.none,
        children: [ApplicationLogo(), _buildContent(context)],
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withValues(alpha: 0.2),
          blurRadius: 8,
          spreadRadius: 2,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }

  Column _buildContent(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [_buildIcon(), const Gap(8), _buildMessageText(context)],
        ),
      ],
    );
  }

  SvgPicture _buildIcon() {
    return SvgPicture.asset(_getIconAsset(), height: 20);
  }

  String _getIconAsset() {
    switch (type) {
      case SnackBarType.error:
        return AppImages.imagesErrorIcon;
      case SnackBarType.success:
        return AppImages.imagesSuccessIcon;
      default:
        return AppImages.imagesPendingIcon;
    }
  }

  Widget _buildMessageText(BuildContext context) {
    return Builder(
      builder: (context) {
        return Text(
          message,
          textAlign: TextAlign.center,
          style: AppStyles.bold16(context, color: Colors.black),
        );
      },
    );
  }
}

class ApplicationLogo extends ConsumerWidget {
  const ApplicationLogo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = ref.randomColor;
    return Positioned(
      right: -5,
      top: -1,
      child: SvgPicture.asset(
        AppImages.imagesAppLogo,
        height: 30,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      ),
    );
  }
}
