import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soild_software_task/core/enums/snack_bar_type.dart';
import 'package:soild_software_task/core/extensions/show_snack_bar_extension.dart';
import 'package:soild_software_task/core/helper/get_random_color.dart';
import 'package:soild_software_task/features/home/presentation/providers/random_color_provider.dart';
import 'package:soild_software_task/features/home/presentation/widgets/animated_background.dart';
import 'package:soild_software_task/features/home/presentation/widgets/center_button.dart';
import 'package:soild_software_task/features/home/presentation/widgets/logo_overlay.dart';

class HomeBody extends ConsumerWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        ref
            .read(randomColorProvider.notifier)
            .update((state) => getRandomColor());
        context.showCustomSnackBar(
          'Color changed!',
          type: SnackBarType.success,
        );
      },
      child: Stack(
        children: const [AnimatedBackground(), LogoOverlay(), CenterButton()],
      ),
    );
  }
}
