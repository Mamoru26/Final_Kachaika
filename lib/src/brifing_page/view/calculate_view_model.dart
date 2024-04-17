// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CalculateModel extends ChangeNotifier {
  double _fullamount = 0;
  double _allamount = 0;
  double _amountoneperson = 0;
  double _amountperson = 0;
  double _count = 0;
  double _procent = 0;

  // Getters

  double get fullamount => _fullamount;
  double get allamount => _allamount;
  double get amountoneperson => _amountoneperson;
  double get amountperson => _amountperson;
  double get count => _count;
  double get procent => _procent;

  void getCalculateData(String amount, String guests) {
    try {
      _fullamount = amount == "" ? double.parse(amount) : 0;
    } catch (e) {}
    try {
      _count = guests == "" ? double.parse(guests) : 0;
    } catch (e) {
      print(e);
    }
    notifyListeners();
  }

  void getCalculateProcent(value) {
    _procent = value / 100;
    notifyListeners();
  }
}
