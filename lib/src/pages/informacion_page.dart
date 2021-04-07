import 'package:animate_do/animate_do.dart';
import 'package:ejemplo_medical_app/src/widget/barra_valoracion.dart';
import 'package:ejemplo_medical_app/src/widget/crearBoton.dart';
import 'package:ejemplo_medical_app/src/widget/image_hero.dart';
import 'package:ejemplo_medical_app/src/widget/linea_color.dart';
import 'package:flutter/material.dart';

class InformacionPage extends StatefulWidget {
  final double sizeHeader;

  const InformacionPage({
    Key key,
    this.sizeHeader = 350,
  }) : super(key: key);
  @override
  _InformacionPageState createState() => _InformacionPageState();
}

class _InformacionPageState extends State<InformacionPage> {
  ScrollController scrollController;
  final double expandedHight = 150.0;

  @override
  void initState() {
    super.initState();
    scrollController = new ScrollController();
    scrollController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  double get top {
    double res = widget.sizeHeader - 30;
    if (scrollController.hasClients) {
      double offset = scrollController.offset;

      res = (widget.sizeHeader - 30) - offset;
      if (res < 40) {
        scrollController.jumpTo(290);
        return 35;
      }
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          NestedScrollView(
              controller: scrollController,
              headerSliverBuilder: (context, value) {
                return [
                  SliverAppBar(
                    backgroundColor: Color(0xffF6F6F6),
                    pinned: false,
                    snap: false,
                    floating: false,
                    expandedHeight: widget.sizeHeader,
                    flexibleSpace: const FlexibleSpaceBar(
                      background: FotoMedico(
                        tag: 'medico',
                        imagen: 'assets/medico.jpg',
                      ),
                    ),
                  ),
                ];
              },
              body: InformacionMedico()),
          Positioned(
              top: top,
              width: MediaQuery.of(context).size.width,
              child: _BordeSuperiorCeceraAnimada(
                alto: 60,
                titulo: 'ONLINE NOW',
              )),
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
    );
  }
}

class _BordeSuperiorCeceraAnimada extends StatefulWidget {
  final double alto;
  final String titulo;

  const _BordeSuperiorCeceraAnimada({Key key, this.alto, this.titulo})
      : super(key: key);
  @override
  _BordeSuperiorCeceraAnimadaState createState() =>
      _BordeSuperiorCeceraAnimadaState();
}

class _BordeSuperiorCeceraAnimadaState
    extends State<_BordeSuperiorCeceraAnimada>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  Animation<double> crecer;
  Animation<double> opacidad;

  @override
  void initState() {
    controller = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));

    crecer = Tween(begin: 0.0, end: 70.0).animate(CurvedAnimation(
        parent: controller,
        curve: Interval(0.0, 1.0, curve: Curves.easeOutBack)));
    opacidad = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: controller, curve: Interval(0.7, 1.0, curve: Curves.linear)));
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward();
    return AnimatedBuilder(
      animation: controller,
      child: _CabeceraRedondeado(),
      builder: (BuildContext context, Widget child) {
        return Opacity(
          opacity: opacidad.value,
          child: _CabeceraRedondeado(
            alto: widget.alto,
            titulo: widget.titulo,
          ),
        );
      },
    );
  }
}

class _CabeceraRedondeado extends StatelessWidget {
  final double alto;
  final String titulo;

  const _CabeceraRedondeado({Key key, this.alto, this.titulo = ''})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 30),
      width: MediaQuery.of(context).size.width,
      height: alto,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(70), topRight: Radius.circular(70)),
        color: Colors.white,
      ),
      child: Text(
        titulo,
        style: TextStyle(
            color: Colors.green.shade400,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

class InformacionMedico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      width: MediaQuery.of(context).size.width,
      height: 309,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ZoomIn(
              duration: Duration(seconds: 1),
              child: Text(
                'Derek Shephard',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
            ),
            ZoomIn(
              duration: Duration(seconds: 1),
              child: Text(
                'Family medicine physician',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            LineaColor(
              alto: 1,
              ancho: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: 20,
            ),
            ValoracionWidget(
              titulo: 'GOOD REVIEWS',
              valoracion: 0.95,
            ),
            SizedBox(
              height: 20,
            ),
            ValoracionWidget(
              titulo: 'TOTAL SCORE',
              valoracion: 0.87,
            ),
            SizedBox(
              height: 20,
            ),
            ValoracionWidget(
              titulo: 'SATISFACTION',
              valoracion: 0.90,
            ),
            SizedBox(
              height: 20,
            ),
            ZoomIn(
              duration: Duration(seconds: 1),
              child: Text(
                'About',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            ZoomIn(
              duration: Duration(seconds: 1),
              child: Text(
                'Doctors, also known as Physicians, are licensed health professionals who maintain and restore human health through the practice of medicine. They examine patients, review their medical history, diagnose illnesses or injuries, administer treatment, and counsel patients on their health and well being.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
