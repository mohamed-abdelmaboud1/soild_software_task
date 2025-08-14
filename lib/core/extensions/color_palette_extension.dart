import 'dart:ui';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soild_software_task/features/home/presentation/providers/random_color_provider.dart';

extension ColorPaletteExtension on WidgetRef {
  Color get randomColor => watch(randomColorProvider);
}
