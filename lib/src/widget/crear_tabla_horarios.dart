import 'package:ejemplo_medical_app/src/provider/fecha_provider.dart';
import 'package:ejemplo_medical_app/src/widget/boton_con_animacion.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PanelHorarios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text(
        'Available Time',
        style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10,
      ),
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            _CrearBoton(
              indice: 0,
              horario: '08 AM',
            ),
            _CrearBoton(
              indice: 1,
              horario: '09 AM',
            ),
            _CrearBoton(
              indice: 2,
              horario: '10 AM',
            ),
            _CrearBoton(
              indice: 3,
              horario: '11 AM',
            )
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            _CrearBoton(
              indice: 4,
              horario: '12 PM',
            ),
            _CrearBoton(
              indice: 5,
              horario: '01 PM',
            ),
            _CrearBoton(
              indice: 6,
              horario: '02 PM',
            ),
            _CrearBoton(
              indice: 7,
              horario: '03 PM',
            )
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            _CrearBoton(
              indice: 8,
              horario: '06 PM',
            ),
            _CrearBoton(
              indice: 9,
              horario: '07 PM',
            ),
            _CrearBoton(
              indice: 10,
              horario: '08 PM',
            ),
            _CrearBoton(
              indice: 11,
              horario: '09 PM',
            )
          ]),
        ],
      )
    ]);
  }
}

class _CrearBoton extends StatelessWidget {
  final int indice;
  final String horario;

  const _CrearBoton({Key key, this.horario = '', this.indice = 0})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    int horaSeleccionado = Provider.of<FechaProvider>(context).horaSeleccionado;
    return Container(
      child: BotonConAnimacion(
        onPressed: () {
          Provider.of<FechaProvider>(context, listen: false).horaSeleccionado =
              indice;
        },
        widget: Text(
          horario,
          style: TextStyle(
              color: (horaSeleccionado == indice)
                  ? Colors.white
                  : Colors.blueAccent),
        ),
        fondo: (horaSeleccionado == indice) ? Colors.blueAccent : Colors.white,
        alto: 35,
        ancho: 85,
      ),
    );
  }
}
