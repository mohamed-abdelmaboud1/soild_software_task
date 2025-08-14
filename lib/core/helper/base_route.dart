import 'package:flutter/material.dart';

class BaseRoute extends PageRouteBuilder<dynamic> {
  final Widget page;
  final Duration duration;

  BaseRoute({required this.page, Duration? duration})
    : duration = duration ?? const Duration(milliseconds: 400),
      super(
        transitionDuration: duration ?? const Duration(milliseconds: 400),
        pageBuilder:
            (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) => Stack(children: [page]),
        transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,
        ) {
          const begin = 0.0;
          const end = 1.0;
          final tween = Tween(begin: begin, end: end);
          final curvedAnimation = CurvedAnimation(
            parent: animation,
            curve: Curves.linearToEaseOut,
          );

          return ScaleTransition(
            scale: tween.animate(curvedAnimation),
            child: child,
          );
        },
      );
}
