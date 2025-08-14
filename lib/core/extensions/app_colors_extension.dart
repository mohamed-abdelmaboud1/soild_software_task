import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soild_software_task/main.dart';

extension AppColorsExtension on WidgetRef {
  Color get randomColor => watch(randomColorProvider);
}
