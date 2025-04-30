class ValidatorUtil {
  /// Checks if the string is empty or only contains whitespace
  static bool isEmpty(String? value) {
    return value == null || value.trim().isEmpty;
  }

  /// Checks if the string contains any numeric characters
  static bool containsNumbers(String value) {
    return RegExp(r'[0-9]').hasMatch(value);
  }

  /// Validates the string based on multiple criteria
  /// Returns true if valid, false if invalid
  static bool validate({
    required String? value,
    bool checkEmpty = true,
    bool checkNumbers = false,
    bool allowNumbers = true,
    int? minLength,
    int? maxLength,
  }) {
    // Check for empty string
    if (checkEmpty && isEmpty(value)) {
      return false;
    }

    // Ensure value is not null after empty check
    final val = value ?? '';

    // Check for numeric characters
    if (checkNumbers) {
      if (!allowNumbers && containsNumbers(val)) {
        return false;
      }
      if (allowNumbers == false && containsNumbers(val)) {
        return false;
      }
    }

    // Check minimum length
    if (minLength != null && val.length < minLength) {
      return false;
    }

    // Check maximum length
    if (maxLength != null && val.length > maxLength) {
      return false;
    }

    return true;
  }

  /// Specialized validator for common text fields (names, etc.)
  static bool validateText(String? value, {bool allowNumbers = false}) {
    return validate(
      value: value,
      checkEmpty: true,
      checkNumbers: true,
      allowNumbers: allowNumbers,
    );
  }

  static bool validatePassword(String password) {
    // Check minimum length (8 characters)
    if (password.length < 8) return false;

    // Check for at least one lowercase letter
    final hasLowercase = RegExp(r'[a-z]').hasMatch(password);

    // Check for at least one uppercase letter
    final hasUppercase = RegExp(r'[A-Z]').hasMatch(password);

    // Check for at least one number
    final hasNumber = RegExp(r'[0-9]').hasMatch(password);

    // Return true only if all conditions are met
    return hasLowercase && hasUppercase && hasNumber;
  }

  static bool validateEmail(String? value) {
    if (isEmpty(value)) return false;
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value!);
  }

  static bool validatePhone(String? value) {
    if (isEmpty(value)) return false;
    return RegExp(
      r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$',
    ).hasMatch(value!);
  }

  /// Specialized validator for numeric fields
  static bool validateNumbers(String? value) {
    if (isEmpty(value)) return false;
    return RegExp(r'^[0-9]+$').hasMatch(value!);
  }
}
