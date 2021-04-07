import 'package:flutter/material.dart';

class CrearCirculo extends StatelessWidget {
  final double size;
  final Color color;
  final Widget child;

  const CrearCirculo({Key key, this.size, this.color, this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(200),
      ),
      child: child,
    );
  }
}
