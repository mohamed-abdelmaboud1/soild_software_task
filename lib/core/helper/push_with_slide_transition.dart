import 'package:flutter/material.dart';

pushWithSlideTransition(
  BuildContext context,
  Widget page, {
  Duration transitionDuration = const Duration(milliseconds: 300),
  Offset beginOffset = const Offset(0, 1),
  Offset endOffset = const Offset(0, 0),
  Curve curve = Curves.easeInOut,
}) {
  Navigator.of(context).push(
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionDuration: transitionDuration,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var tween = Tween(begin: beginOffset, end: endOffset)
            .chain(CurveTween(curve: curve));
        var slideAnimation = animation.drive(tween);

        return SlideTransition(
          position: slideAnimation,
          child: child,
        );
      },
    ),
  );
}
