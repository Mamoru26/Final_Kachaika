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

  void getCalculateData(
      TextEditingController amount, TextEditingController guests) {
    try {
      amount.value.text == ""
          ? _fullamount = 0
          : _fullamount = double.parse(amount.value.text);
    } catch (e) {}
    try {
      _count = guests.text != "" ? double.parse(guests.text) : 0;
    } catch (e) {}

    notifyListeners();
  }

  void getCalculateProcent(value) {
    _procent = value / 100;
    notifyListeners();
  }
}
