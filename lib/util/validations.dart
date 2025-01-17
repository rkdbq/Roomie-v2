import 'package:social_app_ui/util/configs/configs.dart';

class Validations {
  static String? validateNickname(String? value) {
    if (value == null || value.isEmpty)
      return essentialHintTexts['nickname'].toString();
    final RegExp nameExp = new RegExp(r'^[A-za-zğüşöçİĞÜŞÖÇ가-힣 ]+$');
    if (!nameExp.hasMatch(value))
      return consts['korean-or-alphabet'].toString();
    if (value.length > 10) return consts['less-than-ten'].toString();
    return null;
  }

  static String? validateEtc(String? value) {
    if (value == null || value.isEmpty)
      return surveyHintTexts['etc'].toString();
    if (value.length > 50) return consts['less-than-fifty'].toString();
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty)
      return consts['write-university-email'].toString();
    final RegExp nameExp = new RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,2"
        r"53}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-z"
        r"A-Z0-9])?)*$");
    if (!nameExp.hasMatch(value))
      return consts['invalid-email-format'].toString();
    if (!value.endsWith('@jbnu.ac.kr'))
      return consts['not-university-email'].toString();
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty || value.length < 6)
      return consts['short-password-format'].toString();

    if (!value.contains(RegExp(r'[A-Z]')) ||
        !value.contains(RegExp(r'[a-z]'))) {
      return consts['uppercase-password-format'].toString();
    }

    if (!value.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))) {
      return consts['special-char-password-format'].toString();
    }

    passwordForVal = value;

    return null;
  }

  static String passwordForVal = '';

  static String? validatePasswordCheck(String? value) {
    if (value != passwordForVal) return '비밀번호가 일치하지 않습니다.';

    return null;
  }
}
