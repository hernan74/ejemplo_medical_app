import 'package:ejemplo_medical_app/src/pages/informacion_page.dart';
import 'package:ejemplo_medical_app/src/widget/boton_circular_elevado.dart';
import 'package:ejemplo_medical_app/src/widget/crearBoton.dart';
import 'package:ejemplo_medical_app/src/widget/crear_circulo_con_imagen._assets.dart';
import 'package:ejemplo_medical_app/src/widget/crear_tabla_horarios.dart';
import 'package:ejemplo_medical_app/src/widget/dias_mes_list_view.dart';
import 'package:ejemplo_medical_app/src/widget/linea_color.dart';
import 'package:ejemplo_medical_app/src/widget/trancicion_pagina.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF6F6F6),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, trancicionConvinada(HomePage()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Back',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 70,
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              _Cabecera(),
              Positioned(top: 300, child: _SelectorDia()),
              Positioned(bottom: 190, child: _SelectorHora()),
              Positioned(bottom: 100, child: _BotonesInferiores()),
              Positioned(
                bottom: 0,
                child: Hero(
                  tag: 'botonInferior',
                  child: Boton(
                    bordeRedondeado: 0,
                    onPressed: () {},
                    widget: Text('BOOK AN APPOINTMENT'),
                    fondo: Colors.blueAccent,
                    ancho: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Cabecera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      child: Column(
        children: <Widget>[
          Text(
            'Details',
            style: TextStyle(color: Colors.black, fontSize: 40),
          ),
          CrearCirculoAssetImage(
            url: 'assets/medico.jpg',
            size: 140,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Derek Shephard',
            style: TextStyle(
                color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Text(
            'Family medicine physician',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          LineaColor(
            alto: 1,
            ancho: MediaQuery.of(context).size.width,
          )
        ],
      ),
    );
  }
}

class _SelectorDia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 110,
      child: Column(
        children: [
          Text(
            'February 2020',
            style: TextStyle(
                color: Colors.blueAccent, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: DiasMesListScroolView(),
          )),
        ],
      ),
    );
  }
}

class _SelectorHora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 180,
        child: PanelHorarios());
  }
}

class _BotonesInferiores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BotonRedondo(
              onPressed: () {},
              icono: Icons.mode_comment_sharp,
              color: Colors.white,
              fondo: Colors.blueAccent),
          SizedBox(
            width: 30,
          ),
          BotonRedondo(
              onPressed: () {},
              icono: Icons.phone,
              color: Colors.white,
              fondo: Colors.blueAccent),
          SizedBox(
            width: 30,
          ),
          BotonRedondo(
            onPressed: () {
              Navigator.push(context, trancicionConvinada(InformacionPage()));
            },
            icono: Icons.info,
            color: Colors.white,
            fondo: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}
