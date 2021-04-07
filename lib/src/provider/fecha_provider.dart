import 'package:flutter/cupertino.dart';

class FechaProvider with ChangeNotifier {
  int _diaSeleccionado = 7;
  int _horaSeleccionado = 2;

  int get diaSeleccionado => this._diaSeleccionado;
  int get horaSeleccionado => this._horaSeleccionado;

  set diaSeleccionado(int dia) {
    this._diaSeleccionado = dia;
    notifyListeners();
  }

  set horaSeleccionado(int dia) {
    this._horaSeleccionado = dia;
    notifyListeners();
  }
}
