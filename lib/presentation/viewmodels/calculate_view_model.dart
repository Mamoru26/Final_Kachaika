import 'package:flutter/material.dart';
import 'package:kachaika/data/models/calculate_model.dart';
import '../../core/widgets/error_bar.dart';

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
    required ScaffoldMessengerState scaffoldMessenger,
  }) {
    final amountText = amountController.text;
    final guestsText = guestsController.text;

    if (amountText.isEmpty || _tipPercentage == 0.0) {
      _showErrorSnackBar(scaffoldMessenger,
          'Не введена сумма чека / не выбран процент чаевых');
      return;
    }

    try {
      _totalAmount = double.parse(amountText);
      _guestCount = guestsText.isNotEmpty ? double.parse(guestsText) : 1;
    } catch (e) {
      _showErrorSnackBar(scaffoldMessenger, 'Некорректный ввод данных');
      return;
    }

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

  // Показ ошибки
  void _showErrorSnackBar(
      ScaffoldMessengerState scaffoldMessenger, String message) {
    scaffoldMessenger.showSnackBar(
      SnackBar(
        content: ErrorSnackBarContent(
          title: 'Ошибка',
          message: message,
        ),
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        behavior: SnackBarBehavior.floating,
        padding: EdgeInsets.zero,
      ),
    );
  }
}
