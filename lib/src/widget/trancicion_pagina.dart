import 'package:flutter/material.dart';

Route trancicionConvinada(Widget child) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionDuration: Duration(seconds: 1),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final curveAnimation =
          CurvedAnimation(parent: animation, curve: Curves.easeInOut);

      return FadeTransition(
        opacity: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
        child: SlideTransition(
          position: Tween<Offset>(begin: Offset(0.0, 0.5), end: Offset.zero)
              .animate(curveAnimation),
          child: child,
        ),
      );
    },
  );
}
