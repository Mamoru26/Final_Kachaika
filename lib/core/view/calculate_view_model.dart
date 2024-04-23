import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../router/router.dart';
import '../widgets/error_bar.dart';

class CalculateModel extends ChangeNotifier {
  //Общая сумма чека
  double _fullamount = 0;
  //Сумма чека с учетом чаевых
  double _allamount = 0;
  //Сумма чаевых на человека
  double _amountoneperson = 0;
  //Сумма разделенная на одного человека
  double _amountperson = 0;
  //Сумма чаевых
  double _tips = 0;
  //Количество гостей
  double _count = 0;
  //Процент чаевых
  double _procent = 0;

  // Getters

  double get fullamount => _fullamount;
  double get allamount => _allamount;
  double get amountoneperson => _amountoneperson;
  double get amountperson => _amountperson;
  double get count => _count;
  double get procent => _procent;
  double get tipsamount => _tips;

  void getCalculateData(
    TextEditingController amount,
    TextEditingController guests,
    ScaffoldMessengerState contentsnack,
    StackRouter buildroute,
  ) {
    if (amount.value.text != "" && _procent != 0.0) {
      try {
        amount.value.text == ""
            ? _fullamount = 1
            : _fullamount = double.parse(amount.value.text);
      } catch (e) {
        _fullamount = 1;
      }
      try {
        _count = guests.text != "" ? double.parse(guests.text) : 1;
      } catch (e) {
        _count = 1;
      }
      if (_fullamount != 0 && _count != 0) {
        _allamount = _fullamount + (_fullamount * _procent);
        _tips = _fullamount * _procent;
        _amountoneperson = _tips / _count;
        _amountperson = _allamount / _count;
      }
      _allamount = _allamount.ceilToDouble();
      _tips = _tips.ceilToDouble();
      _amountoneperson = _amountoneperson.ceilToDouble();
      _amountperson = _amountperson.ceilToDouble();
      notifyListeners();
      buildroute.push(const CalculateRoute2());
    } else {
      contentsnack.showSnackBar(SnackBar(
        content: const ErrorSnackBarContent(
          title: 'Ошибка',
          message: 'Не введена сумма чека / не выбран процент чаевых',
        ),
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 16.0), // Добавляем отступы от края экрана
        behavior: SnackBarBehavior.floating,
        padding: EdgeInsets.zero,
      ));
    }
  }

  void getCalculateProcent(value) {
    _procent = value / 100;
    notifyListeners();
  }
}
