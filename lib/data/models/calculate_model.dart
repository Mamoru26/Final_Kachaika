class CalculateModel {
  double calculateTotalAmountWithTips(double totalAmount, double tipPercentage) {
    return totalAmount + (totalAmount * tipPercentage);
  }

  double calculateTips(double totalAmount, double tipPercentage) {
    return totalAmount * tipPercentage;
  }

  double calculateTipsPerPerson(double tips, double guestCount) {
    return tips / guestCount;
  }

  double calculateAmountPerPerson(double totalAmountWithTips, double guestCount) {
    return totalAmountWithTips / guestCount;
  }
}