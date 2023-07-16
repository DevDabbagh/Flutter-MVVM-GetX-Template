import 'package:flutter/cupertino.dart';

class Validator {
  static var instance = Validator();

  bool emailValidator(String value) {
    bool showMessage;
    RegExp emailRegExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9\-\_]+(\.[a-zA-Z]+)*$");

    if (emailRegExp.hasMatch(value)) {
      showMessage = false;
    } else {
      showMessage = true;
    }
    return showMessage;
  }

  bool phoneValidator(String value) {
    bool showMessage;
    RegExp _anyLetter = RegExp(r'[A-Za-z]');
    final RegExp _phoneRegExp = RegExp(r'^\d{7,15}$');

    if (!_anyLetter.hasMatch(value) && _phoneRegExp.hasMatch(value)) {
      showMessage = false;
    } else {
      showMessage = true;
    }
    return showMessage;
  }

  bool numbarValidator(String value) {
    bool showMessage;
    RegExp _anyLetter = RegExp(r'[A-Za-z]');

    if (!_anyLetter.hasMatch(value)) {
      showMessage = false;
    } else {
      showMessage = true;
    }
    return showMessage;
  }

  bool passwordValidator(String value) {
    bool showMessage;

    if (value.length >= 6) {
      showMessage = false;
    } else {
      showMessage = true;
    }
    return showMessage;
  }

  bool generalValidator(String value) {
    bool showMessage;

    if (value.isEmpty) {
      showMessage = true;
    } else {
      showMessage = false;
    }
    return showMessage;
  }
}
