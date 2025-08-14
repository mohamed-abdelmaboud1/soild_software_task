import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soild_software_task/core/helper/get_random_color.dart';

final StateProvider<Color> randomColorProvider = StateProvider<Color>((ref) {
  return getRandomColor();
});
