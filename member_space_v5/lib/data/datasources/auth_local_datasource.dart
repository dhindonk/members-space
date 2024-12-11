import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDatasource {
  Future<void> saveAuthData() async {
    //save auth data to local storage
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('auth_data', 'Sudah Login');
  }

  Future<void> removeAuthData() async {
    //remove auth data from local storage
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth_data');
  }

  Future<bool> isAuth() async {
    //check if user is authenticated
    final prefs = await SharedPreferences.getInstance();
    final authData = prefs.getString('auth_data');
    if (authData != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> saveIsFirstInstall() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFirstInstall', false);

    final cek = prefs.getBool('isFirstInstall');
    print(cek);
  }

  Future<bool> isFirstInstall() async {
    final prefs = await SharedPreferences.getInstance();
    final isFirstInstall = prefs.getBool('isFirstInstall');
    if (isFirstInstall == true) {
      return true;
    } else {
      return false;
    }
  }
}
