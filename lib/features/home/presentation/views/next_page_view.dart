import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soild_software_task/core/utils/app_images.dart';
import 'package:soild_software_task/core/widgets/custom_image.dart';
import 'package:soild_software_task/features/home/presentation/providers/random_color_provider.dart';

class NextPageView extends ConsumerWidget {
  const NextPageView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Next Page')),
      body: Center(
        child: CustomImage(
          AppImages.imagesAppLogo,
          width: 100,
          height: 100,
          color: ref.watch(randomColorProvider),
        ),
      ),
    );
  }
}
