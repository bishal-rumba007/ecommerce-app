class InputValidator {
  static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter your password";
    } else if (value.length < 6) {
      return "Enter at least 6 characters";
    } else if (value.contains(' ')) {
      return "Do not enter spaces";
    } else if (!RegExp(r'^(?=.*?[A-Z])').hasMatch(value)) {
      return "Enter at least one uppercase letter";
    } else if (!RegExp(r'^(?=.*?[0-9])').hasMatch(value)) {
      return "Enter at least one digit";
    } else if (!RegExp(r'^(?=.*?[!@#&*~])').hasMatch(value)) {
      return "Enter at least one special character";
    }
    return null;
  }

  static String? phoneValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter your phone number";
    } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return "Please enter valid phone number";
    } else if (value.length < 10) {
      return "Please enter valid phone number";
    }
    return null;
  }

  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter your Email";
    } else if (!value.contains(RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))) {
      return "Please enter valid email";
    } else if (value.length < 10) {
      return "Please enter valid email";
    }
    return null;
  }
}
