Map<int, String> disMes = {
  1: 'SUN',
  2: 'MON',
  3: 'TUE',
  4: 'WED',
  5: 'THU',
  6: 'FRI',
  7: 'SAT',
  8: 'SUN',
  9: 'MON',
  10: 'TUE',
  11: 'WED',
  12: 'THU',
  13: 'FRI',
  14: 'SAT',
  15: 'SUN',
  16: 'MON',
  17: 'TUE',
  18: 'WED',
  19: 'THU',
  20: 'FRI',
  21: 'SAT',
  22: 'SUN',
  23: 'MON',
  24: 'TUE',
  25: 'WED',
  26: 'THU',
  27: 'FRI',
  28: 'SAT',
};

Map<int, Horarios> horarios = {
  1:  Horarios('08','AM'),
  2:  Horarios('09','AM'),
  3:  Horarios('10','AM'),
  4:  Horarios('11','AM'),
  5:  Horarios('12','PM'),
  6:  Horarios('01','PM'),
  7:  Horarios('02','PM'),
  8:  Horarios('03','PM'),
  9:  Horarios('06','PM'),
  10: Horarios('07','PM'),
  11: Horarios('08','PM'),
  12: Horarios('09','PM'),
};

class Horarios {
  String hora;
  String amPm;

  Horarios(this.hora, this.amPm);
}
