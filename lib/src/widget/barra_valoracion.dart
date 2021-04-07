import 'package:ejemplo_medical_app/src/widget/linea_color.dart';
import 'package:flutter/material.dart';

class ValoracionWidget extends StatelessWidget {
  final String titulo;
  final double valoracion;
  final double padding;

  const ValoracionWidget(
      {Key key, this.titulo, this.valoracion, this.padding = 0})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: padding),
      width: MediaQuery.of(context).size.width,
      height: 40,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Positioned(
            top: 0,
            child: Text(
              titulo,
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          Positioned(
            bottom: 7,
            child: LineaColor(
              bordeRedondoDerecho: 20,
              bordeRedondoIzquierdo: 20,
              alto: 7,
              ancho: 300,
            ),
          ),
          Positioned(
              bottom: 7,
              child: LineaColor(
                delayAnimacion: 0.5,
                duracion: Duration(seconds: 2),
                color: Colors.blueAccent,
                bordeRedondoDerecho: 20,
                bordeRedondoIzquierdo: 20,
                alto: 7,
                ancho: 300 * valoracion,
              )),
          Positioned(
              right: 0,
              bottom: 0,
              child: Text(
                '${(valoracion * 100).toStringAsFixed(0)}',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ))
        ],
      ),
    );
  }
}
