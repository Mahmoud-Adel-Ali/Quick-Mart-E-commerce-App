class EndPoints {
  static const baseUrl = 'http://ahmedsalah.runasp.net/api/';
  static const signUp = 'Account/Register';
  static const login = 'Account/Login';
  static const changePassword = 'Account/ChangePassword';
  static sendNumForEmail(String email) => 'Account/SendNumForEmail?sendEmail=$email';
  static confirmNum(String code) => 'Account/ConfirmNum?Num=$code';
}