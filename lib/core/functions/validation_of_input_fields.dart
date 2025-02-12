String? validatorOfEmail(String? value) {
  // Define the regex pattern for email validation
  String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';
  RegExp regex = RegExp(pattern);

  // Check if the email is null or empty
  if (value == null || value.isEmpty) {
    return 'Please enter an email';
  } else if (!regex.hasMatch(value)) {
    return 'Enter a valid email address';
  }
  return null;
}

String? validatorOfPassword(String? value) {
  // RegExp regex =
  //     RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  if (value == null || value.isEmpty) {
    return 'Please enter password';
  } else if (value.length < 8) {
    return 'size of password greater than 8 char';
  }
  return null;
  //  else {
  //   if (!regex.hasMatch(value)) {
  //     return 'Enter valid password \n password should contain at least one upper , lower case , number , special character';
  //   } else {
  //     return null;
  //   }
  // }
}

String? validUserName(String? value) {
  bool upper = value!.contains(RegExp(r'[A-Z]'));
  bool lower = value.contains(RegExp(r'[a-z]'));
  bool underScore = value.contains('_');
  if (upper && lower && underScore) {
    return null;
  } else {
    return 'should contain at least one upper case , lower caser \nand under score';
  }
}

String? vailEgyptionPhone(String? value) {
  RegExp regex = RegExp(r'^01([0-9]{9})$');
  if (value == null || value.isEmpty) {
    return 'Please enter phone number';
  } else if (!regex.hasMatch(value)) {
    return 'Enter a valid Egyptian phone number';
  }
  return null;
}
