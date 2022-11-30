import 'package:movie_app/entities/user.dart';

class UserServices {
  static User? getUser({required String email, required String token}) {
    return User(email: "agung@gmail.com", name: "Agung", token: token);
  }

  static String? getToken({required String email, required String password}) {
    if (email == "agung@gmail.com" && password == "123") {
      return 'asdasdasd';
    }
    return null;
  }

  static bool isTokenValid(String token) {
    return true;
  }
}
