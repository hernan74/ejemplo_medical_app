import 'package:flutter/material.dart';

class LineaColor extends StatefulWidget {
  final double ancho;
  final double alto;
  final Color color;
  final double bordeRedondoDerecho;
  final double bordeRedondoIzquierdo;
  final double delayAnimacion;
  final Duration duracion;

  const LineaColor(
      {Key key,
      this.ancho = 100.0,
      this.alto = 2,
      this.color = Colors.grey,
      this.bordeRedondoDerecho = 0.0,
      this.bordeRedondoIzquierdo = 0.0,
      this.delayAnimacion = 0,
      this.duracion = Duration.zero})
      : super(key: key);

  @override
  _LineaColorState createState() => _LineaColorState();
}

class _LineaColorState extends State<LineaColor>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animarCarga;
  @override
  void initState() {
    controller =
        new AnimationController(vsync: this, duration: widget.duracion);
    animarCarga = Tween(begin: 0.0, end: widget.ancho).animate(CurvedAnimation(
        parent: controller,
        curve: Interval(widget.delayAnimacion, 1.0, curve: Curves.easeOut)));
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Container(
          width: animarCarga.value,
          height: widget.alto,
          decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(widget.bordeRedondoIzquierdo),
                  right: Radius.circular(widget.bordeRedondoDerecho))),
        );
      },
    );
  }
}
