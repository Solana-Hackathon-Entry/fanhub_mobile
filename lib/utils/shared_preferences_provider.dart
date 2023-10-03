import 'package:shared_preferences/shared_preferences.dart';

enum _SharedPrefName {
  isLoggedIn,
}

class SharedPreferenceProvider {
  //#region Setter

  setIsLoggedIn(bool data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(_SharedPrefName.isLoggedIn.name, data);
  }


  //#endregion

  //#region Getter
  Future<bool> getIsLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_SharedPrefName.isLoggedIn.name) ?? false;
  }
//#endregion
  Future<void> clearPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}
