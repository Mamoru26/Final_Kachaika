// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CalculateModel extends ChangeNotifier {
  double _fullamount = 0.0;
  double _allamount = 0.0;
  double _amountoneperson = 0.0;
  double _amountperson = 0.0;
  double _count = 0.0;

  // Getters

  double get fullamount => _fullamount;
  double get allamount => _allamount;
  double get amountoneperson => _amountoneperson;
  double get amountperson => _amountperson;
  double get count => _count;

  setFullAmount() {
    _fullamount = fullamount;
    notifyListeners();
  }

  setAllAmount() {
    _allamount = allamount;
    notifyListeners();
  }

  void getCalculateData(TextEditingValue value, TextEditingValue value1) {
    try {
      _fullamount = value.text == "" ? double.parse(value.text) : 0.0;
      _count = value1.text == "" ? double.parse(value1.text) : 0.0;
    } catch (e) {
      print(e);
    }

    notifyListeners();
  }

  setAmountOerson() {
    _amountperson = amountperson;
    notifyListeners();
  }
}
