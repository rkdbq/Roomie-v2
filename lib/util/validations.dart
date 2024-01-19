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

  static String? validatePassword(String? value, bool isLoginPage) {
    if (value == null || value.isEmpty || value.length < 6)
      return isLoginPage ? "유효한 비밀번호를 입력해주세요." : '비밀번호는 6자 이상이여야 합니다.';
    return null;
  }
}
