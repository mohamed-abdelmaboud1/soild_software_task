import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:soild_software_task/core/utils/app_colors.dart';

import '../utils/app_styles.dart';

class AppEnName extends StatelessWidget {
  const AppEnName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
              'Soild Software',
              textDirection: TextDirection.ltr,
              style: AppStyles.bold20(
                context,
                color: AppColors.lightPrimary,
              ).copyWith(fontFamily: 'Angkor', letterSpacing: 3),
            )
            .animate()
            .fadeIn(duration: 600.ms)
            .scale(duration: 600.ms)
            .move(
              begin: const Offset(0, 20),
              end: Offset.zero,
              delay: 300.ms,
              duration: 1200.ms,
            ),

        const Gap(8),

        Text(
              'ENGINEERING\nDONE RIGHT',
              style: AppStyles.bold13(context, color: AppColors.lightPrimary),
            )
            .animate()
            .fadeIn(duration: 400.ms)
            .blurXY(begin: 0, end: 5, duration: 500.ms, delay: 1000.ms)
            .move(
              begin: Offset.zero,
              end: const Offset(50, 0),
              duration: 500.ms,
              delay: 1500.ms,
            )
            .fadeOut(duration: 400.ms, delay: 1500.ms),
      ],
    );
  }
}
