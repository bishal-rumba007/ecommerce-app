

import 'package:flutter/services.dart';

class CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    String newText = newValue.text.replaceAll(RegExp(r'\s+'), '');
    List<String> parts = [];

    for (int i = 0; i < newText.length; i += 4) {
      parts.add(newText.substring(i, i + 4 > newText.length ? newText.length : i + 4));
    }

    return newValue.copyWith(
      text: parts.join(' '),
      selection: TextSelection.collapsed(offset: parts.join(' ').length),
    );
  }
}


class CardExpiryFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;

    // If the user is deleting characters, just return the new value.
    if (newValue.selection.baseOffset < oldValue.selection.baseOffset) {
      return newValue;
    }

    var buffer = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      buffer.write(text[i]);
      var nonDigits = text.substring(0, i).replaceAll(RegExp(r'\D'), '');

      if (nonDigits.length >= 2) {
        buffer.write('/');
        // Add a separator if the month part is entered
        if (nonDigits.length == 2) {
          buffer.write(' ');
        }
      }
      // Do not allow more than 5 characters (including separators)
      if (nonDigits.length >= 4) {
        break;
      }
    }

    var formattedText = buffer.toString();
    return newValue.copyWith(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}


/// create credit card expiry date formatter
/// it should add '/' after 2 digits the first two digits are month and the next two digits are year