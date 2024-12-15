import 'package:shared_preferences/shared_preferences.dart';

class MySharedPrefs {
  static Future<bool> saveData(
      {required String key, required dynamic value}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (value is String) return await prefs.setString(key, value);
    if (value is bool) return await prefs.setBool(key, value);
    if (value is int) return await prefs.setInt(key, value);
    return await prefs.setDouble(key, value);
  }

  static Future<bool> getData({required String key}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? false;
  }
}