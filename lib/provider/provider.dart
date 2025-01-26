import 'package:flutter/material.dart';

class Click_Notifier extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrease() {
    if (_counter > 0) {
      _counter--;
    } else {
      _counter = 0;
    }
    notifyListeners();
  }

  void reset() {
    _counter = 0;
    notifyListeners();
  }
}
