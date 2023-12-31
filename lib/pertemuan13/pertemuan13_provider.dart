import 'package:flutter/material.dart';

class Pertemuan13Provider extends ChangeNotifier {
  double _sliderValue = 0;
  double get sliderValue => _sliderValue;

  set setSliderValue(val) {
    _sliderValue = val;
    notifyListeners();
  }

  bool _sedangMemanggang = false;
  bool get sedangMemanggang => _sedangMemanggang;
  set setSedangMemanggang(val) {
    _sedangMemanggang = val;
    notifyListeners();
  }

  bool _selesaiMasak = false;
  bool get selesaiMasak => _selesaiMasak;
  set setselesaiMasak(val) {
    _selesaiMasak = val;
    notifyListeners();
  }

  mulaiMemanggang(int val) async {
    setSedangMemanggang = true;
    Future.delayed(Duration(seconds: val), () {
      setSedangMemanggang = false;
      setselesaiMasak = true;
    });
  }
}