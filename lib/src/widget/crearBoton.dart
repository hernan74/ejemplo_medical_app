import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
  final Widget widget;
  final Color fondo;
  final double ancho;
  final double alto;
  final double elevacion;
  final double bordeRedondeado;
  final Function onPressed;
  const Boton(
      {@required this.widget,
      this.fondo = Colors.grey,
      this.ancho = 70,
      this.alto = 70,
      this.elevacion = 0,
      this.bordeRedondeado = 20,
      this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: widget,
        style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(Size(ancho, alto)),
            elevation: MaterialStateProperty.all<double>(elevacion),
            backgroundColor: MaterialStateProperty.all(fondo),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(bordeRedondeado)))));
  }
}
