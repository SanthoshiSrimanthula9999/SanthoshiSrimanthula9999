class Validators {
  static final RegExp _phoneRegExp = RegExp(r'[1-9]{1}[0-9]{9}$');

  static bool isValidPhone(String value) {
    print('enterd value: ${value}');
    if (_phoneRegExp.hasMatch(value)) {
      print('matched');
      return true;
    } else {
      print('not matched');
      return false;
    }
  }
}
