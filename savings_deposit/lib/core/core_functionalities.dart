import 'package:flutter/services.dart';

String toRupeeFormat(double amount) {
  return amount.toStringAsFixed(2);
}

String accountNumberToReadable(String accountNumber) {
  String first = accountNumber.substring(0, 4);
  String second = accountNumber.substring(4, 8);
  String third = accountNumber.substring(8, 12);
  String fourth = accountNumber.substring(12, 16);
  String updatedaccountNumber = first +
      second.padLeft(5, "-") +
      third.padLeft(5, "-") +
      fourth.padLeft(5, "-");
  return updatedaccountNumber;
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
        text: newValue.text.toUpperCase(), selection: newValue.selection);
  }
}

class LowerCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
        text: newValue.text.toLowerCase(), selection: newValue.selection);
  }
}
