import 'package:flutter/material.dart';

class SliderViewModel extends ChangeNotifier {
  double _sliderValue = 0.0;

  double get sliderValue => _sliderValue;

  void setSliderValue(double value) {
    _sliderValue = value;
    notifyListeners();
  }
}
