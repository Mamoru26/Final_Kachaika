import 'package:flutter/material.dart';
import 'package:kachaika/data/models/calculate_model.dart';

class CalculateViewModel extends ChangeNotifier {
  final CalculateModel _calculateModel = CalculateModel();

  double _totalAmount = 0;
  double _totalAmountWithTips = 0;
  double _tipsPerPerson = 0;
  double _amountPerPerson = 0;
  double _tips = 0;
  double _guestCount = 0;
  double _tipPercentage = 0;

  // Getters
  double get totalAmount => _totalAmount;
  double get totalAmountWithTips => _totalAmountWithTips;
  double get tipsPerPerson => _tipsPerPerson;
  double get amountPerPerson => _amountPerPerson;
  double get guestCount => _guestCount;
  double get tipPercentage => _tipPercentage;
  double get tipsAmount => _tips;

  // Установка процента чаевых
  void setTipPercentage(double value) {
    _tipPercentage = value / 100;
    notifyListeners();
  }

  // Расчет данных
  void calculate({
    required TextEditingController amountController,
    required TextEditingController guestsController,
  }) {
    final amountText = amountController.text;
    final guestsText = guestsController.text;

    _totalAmount = double.parse(amountText);
    _guestCount = guestsText.isNotEmpty ? double.parse(guestsText) : 1;

    if (_totalAmount != 0 && _guestCount != 0) {
      _tips = _calculateModel.calculateTips(_totalAmount, _tipPercentage);
      _totalAmountWithTips = _calculateModel.calculateTotalAmountWithTips(
          _totalAmount, _tipPercentage);
      _tipsPerPerson =
          _calculateModel.calculateTipsPerPerson(_tips, _guestCount);
      _amountPerPerson = _calculateModel.calculateAmountPerPerson(
          _totalAmountWithTips, _guestCount);

      // Округление значений
      _totalAmountWithTips = _totalAmountWithTips.ceilToDouble();
      _tips = _tips.ceilToDouble();
      _tipsPerPerson = _tipsPerPerson.ceilToDouble();
      _amountPerPerson = _amountPerPerson.ceilToDouble();

      notifyListeners();
    }
  }

  void clearData() {
    _totalAmount = 0;
    _totalAmountWithTips = 0;
    _tipsPerPerson = 0;
    _amountPerPerson = 0;
    _tips = 0;
  }
}
