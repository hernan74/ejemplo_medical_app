import 'package:ejemplo_medical_app/src/helpers/helpers.dart';
import 'package:ejemplo_medical_app/src/provider/fecha_provider.dart';
import 'package:ejemplo_medical_app/src/widget/dia_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DiasMesListScroolView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fechaProvider = Provider.of<FechaProvider>(context);
    return ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: disMes.entries
            .map((entry) => GestureDetector(
                  onTap: () {
                    fechaProvider.diaSeleccionado = entry.key;
                  },
                  child: DiaWidget(
                    numeroDia: entry.key,
                    diaSemana: entry.value,
                    seleccion: fechaProvider.diaSeleccionado == entry.key,
                  ),
                ))
            .toList());
  }
}
