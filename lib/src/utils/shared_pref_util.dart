import 'package:big_test/src/constant/shared_pref_key_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefUtil {
  static Future setToken(String value) async {
    final sharedPref = await SharedPreferences.getInstance();

    sharedPref.setString(SharedPrefKeyConstant.token, value);
  }

  static Future<String> getToken() async {
    final sharedPref = await SharedPreferences.getInstance();

    return sharedPref.getString(SharedPrefKeyConstant.token) ?? "";
  }

  static Future setIdUser(String value) async {
    final sharedPref = await SharedPreferences.getInstance();

    sharedPref.setString(SharedPrefKeyConstant.idUser, value);
  }

  static Future<String> getIdUser() async {
    final sharedPref = await SharedPreferences.getInstance();

    return sharedPref.getString(SharedPrefKeyConstant.token) ?? "";
  }
}
