


import 'package:flutter/services.dart';

class DateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    String newText = newValue.text;

    /// Limit the length of the text to 10 characters (yyyy-MM-dd)
    if (newText.length > 10) {
      newText = newText.substring(0, 10);
    }

    /// Add '-' after year and month
    if (oldValue.text.length < newValue.text.length) {
      if (newText.length == 4 || newText.length == 7) {
        newText += '-';
      }
    } else {
      /// Remove '-' if the user deletes it
      if (newText.length == 4 || newText.length == 7) {
        newText = newText.substring(0, newText.length - 1);
      }
    }

    /// Validate year
    if (newText.length >= 4) {
      int year = int.tryParse(newText.substring(0, 4)) ?? 0;
      if (year > 2080) {
        newText = '2080${newText.substring(4)}';
      }
    }

    /// Validate month
    if (newText.length >= 7) {
      int month = int.tryParse(newText.substring(5, 7)) ?? 0;
      if (month > 12) {
        newText = '${newText.substring(0, 5)}12${newText.substring(7)}';
      }
    }

    /// Validate day
    if (newText.length >= 10) {
      int month = int.tryParse(newText.substring(5, 7)) ?? 0;
      int day = int.tryParse(newText.substring(8, 10)) ?? 0;
      int maxDay = _getMaxDayForMonth(month);
      if (day > maxDay) {
        newText = newText.substring(0, 8) + maxDay.toString().padLeft(2, '0');
      }
    }

    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }

  int _getMaxDayForMonth(int month) {
    /// Adjust this function according to the Nepali calendar
    if (month == 2) {
      return 29; // Considering leap year
    } else if (month == 4 || month == 6 || month == 9 || month == 11) {
      return 30;
    } else {
      return 31;
    }
  }
}