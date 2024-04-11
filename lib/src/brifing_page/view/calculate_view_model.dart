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

  void getCalculateData(String amount, String guests) {
    try {
      _fullamount = amount == "" ? double.parse(amount) : 0.0;
    } catch (e) {}
    try {
      _count = guests == "" ? double.parse(guests) : 0.0;
    } catch (e) {
      print(e);
    }
    notifyListeners();
  }
}
