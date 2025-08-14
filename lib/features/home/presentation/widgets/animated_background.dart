import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soild_software_task/features/home/presentation/providers/random_color_provider.dart';

class AnimatedBackground extends ConsumerWidget {
  const AnimatedBackground({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
      width: double.infinity,
      height: double.infinity,
      color: ref.watch(randomColorProvider),
    );
  }
}
