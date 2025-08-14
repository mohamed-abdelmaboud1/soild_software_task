import 'package:flutter/material.dart';

import '../enums/snack_bar_type.dart';
import '../widgets/snack_bar_widget.dart';

extension ShowSnackBarExtension on BuildContext {
  void showCustomSnackBar(
    String message, {
    double? height,
    double fontSize = 14,
    SnackBarType type = SnackBarType.info,
    String? title,
    bool isForEver = false,
  }) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          duration: Duration(milliseconds: 3000, days: isForEver ? 1 : 0),
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          clipBehavior: Clip.none,
          dismissDirection: DismissDirection.endToStart,
          content: SizedBox(
            height: 70,
            child: SnackBarWidget(message: message, type: type),
          ),
        ),
      );
  }
}
