import 'package:animate_do/animate_do.dart';
import 'package:ejemplo_medical_app/src/widget/crear_circulo.dart';
import 'package:flutter/material.dart';

class DiaWidget extends StatelessWidget {
  final double alto;
  final double ancho;
  final String diaSemana;
  final int numeroDia;
  final bool seleccion;

  const DiaWidget(
      {Key key,
      this.alto,
      this.ancho = 50,
      this.diaSemana,
      this.numeroDia,
      this.seleccion = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlipInX(
      delay: Duration(milliseconds: 500),
          child: Container(
        width: ancho,
        height: alto,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              diaSemana,
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 19),
            ),
            SizedBox(
              height: 5,
            ),
            CrearCirculo(
              size: 23,
              color: seleccion ? Colors.blueAccent : Color(0xffF6F6F6),
              child: Center(
                child: Text('$numeroDia',
                    style: TextStyle(
                        color: seleccion ? Colors.white : Colors.blueAccent,
                        fontSize: 20)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
