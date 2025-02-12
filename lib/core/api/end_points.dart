class EndPoints {
  static const baseUrl = 'https://student.valuxapps.com/api/';
  static const signUp = 'register';
  static const login = 'login';
  static const changePassword = 'Account/ChangePassword';
  static sendNumForEmail(String email) =>
      'Account/SendNumForEmail?sendEmail=$email';
  static confirmNum(String code) => 'Account/ConfirmNum?Num=$code';
}
