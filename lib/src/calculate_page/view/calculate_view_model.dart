// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CalculateModel extends ChangeNotifier {
  double _fullamount = 0.0;
  double _allamount = 0.0;
  double _amountoneperson = 0.0;
  double _amountperson = 0.0;

  // Getters

  double get fullamount => _fullamount;
  double get allamount => _allamount;
  double get amountoneperson => _amountoneperson;
  double get amountperson => _amountperson;

  setFullAmount() {
    _fullamount = fullamount;
    notifyListeners();
  }

  setAllAmount() {
    _allamount = allamount;
    notifyListeners();
  }

  setAmountOnePerson() {
    _amountoneperson = amountoneperson;
    notifyListeners();
  }

  setAmountOerson() {
    _amountperson = amountperson;
    notifyListeners();
  }
}
