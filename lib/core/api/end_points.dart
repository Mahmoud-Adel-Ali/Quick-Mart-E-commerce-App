class EndPoints {
  static const baseUrl = 'http://ahmedsalah.runasp.net/api/';
  static const signUp = 'Account/Register';
  static const login = 'Account/Login';
  static sendNumForEmail(String email) => 'Account/SendNumForEmail?sendEmail=$email';
}