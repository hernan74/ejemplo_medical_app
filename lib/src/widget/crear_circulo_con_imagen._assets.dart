import 'package:flutter/material.dart';

import 'image_hero.dart';

class CrearCirculoAssetImage extends StatelessWidget {
  final double size;
  final Color color;
  final String url;

  const CrearCirculoAssetImage(
      {Key key, @required this.size, this.color, @required this.url})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(200),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(200),
        child: FotoMedico(
          tag: 'medico',
          imagen: url,
        ),
      ),
    );
  }
}
