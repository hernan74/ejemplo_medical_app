import 'package:flutter/material.dart';

class BotonRedondo extends StatelessWidget {
  final IconData icono;
  final Color color;
  final Color fondo;
  final double size;
  final double elevacion;
  final Function onPressed;

  const BotonRedondo(
      {@required this.icono,
      @required this.color,
      this.fondo = Colors.grey,
      this.size = 70,
      this.elevacion = 0, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Icon(
          icono,
          color: color,
          size: 30.0,
        ),
        style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(Size(size, size)),
            elevation: MaterialStateProperty.all<double>(elevacion),
            backgroundColor: MaterialStateProperty.all(fondo),
            shape: MaterialStateProperty.all(CircleBorder())));
  }
}
