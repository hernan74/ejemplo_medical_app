import 'package:animate_do/animate_do.dart';
import 'package:ejemplo_medical_app/src/widget/crearBoton.dart';
import 'package:flutter/material.dart';

class BotonConAnimacion extends StatelessWidget {
  final Widget widget;
  final Color fondo;
  final Function onPressed;
  final double ancho;
  final double alto;

  const BotonConAnimacion(
      {Key key, this.widget, this.fondo, this.onPressed, this.ancho, this.alto})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlipInX(
        delay: Duration(milliseconds: 700),
        child: Boton(
          widget: widget,
          fondo: fondo,
          alto: alto,
          ancho: ancho,
          onPressed: onPressed,
        ));
  }
}
