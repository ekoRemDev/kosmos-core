abstract class AuthValidator {
  static String? validEmail(String? email) {
    if (email == null || email.isEmpty) return "field.form-validator.all-field-must-have-value";
    final parsedEmail = email.trim();
    if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9-.]+\.[a-zA-Z]+").hasMatch(parsedEmail)) {
      return "field.form-validator.email.incorrect";
    }
    return null;
  }

  static String? validPassword(String? password) {
    if (password == null || password.isEmpty) return "field.form-validator.all-field-must-have-value";
    if (password.length < 6) return "field.form-validator.password.length";
    // RegExp regex =
    //     RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    // if (password.contains(RegExp(r'^(?=.*?[A-Z])'))) return "field.form-validator.password.maj";
    // if (password.contains(RegExp(r'^(?=.*?[a-z])'))) return "field.form-validator.password.min";
    // if (password.contains(RegExp(r'^(?=.*?[0-9])'))) return "field.form-validator.password.number";
    // if (password.contains(RegExp(r'^(?=.*?[!@#$%(),.?<>])'))) {
    // return "field.form-validator.password.special-char";
    // }
    return null;
  }

  static String? validSamePassword(String? password, String? secondPassword) {
    if (password == null || password.isEmpty) return "field.form-validator.all-field-must-have-value";
    if (secondPassword == null || secondPassword.isEmpty) return "field.form-validator.all-field-must-have-value";
    if (password != secondPassword) return "field.form-validator.password.not-same";
    return null;
  }

  static String? fieldNotEmpty(String? value) {
    if (value == null || value.trim().isEmpty) return "field.form-validator.all-field-must-have-value";
    return null;
  }
}
