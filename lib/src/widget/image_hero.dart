import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FotoMedico extends StatelessWidget {
  final String imagen;
  final String tag;
  const FotoMedico({Key key, this.imagen, this.tag}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return Hero(
      tag: tag,
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage(imagen),
      ),
    );
  }
}
