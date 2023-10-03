import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class ApiMessage {
  static const String error = "Unable to establish connection. \nPlease contact your system administrator.";
  static const String connectToInternet = "Please connect to the internet.";
  static const String timeOut = "Timeout.";
}

class APICommon {
  // API Setup
  static const String apiVersion = "APIVersion_1.0";
  static const int timeOutPeriod = 60;

  static const String appVersion = "pray_me_not_1.0.0";
}

class CommonMessage {
  static const String invalidCredentials = "Invalid Credentials";
}

class APIRequest {
  //static const String API_BASE_URL = "http://192.168.0.12:45455"; // SERVER
  //static const String baseURL = "https://192.168.100.29:45455/api"; // LOCAL
  static const String baseURL = "http://192.168.100.8:3000/api"; // LOCAL

  // User
  static const String registerUser = "$baseURL/user/registerUser";
  static const String loginUser = "$baseURL/User/loginUser";

  // Prayer
  static const String getMunicipalityWithPrayer = "$baseURL/Prayer/GetMunicipalityWithPrayer";
  static const String getPrayerGeneralStatus = "$baseURL/Prayer/GetPrayerGeneralStatus";
  static const String getPrayerPerMunicipality = "$baseURL/Prayer/GetPrayerPerMunicipality";
  static const String createPrayer = "$baseURL/Prayer/CreatePrayer";
  static const String getPrayerPerUser = "$baseURL/Prayer/GetPrayerPerUser";
  static const String updatePrayer = "$baseURL/Prayer/UpdatePrayer";
}

class CommonAPIError {
  static String handleError(http.Response response) {
    if (response.statusCode == 400) {
      print("Error Response: ${response.body}");
      var userMap = json.decode(response.body);
      List<String> errors =  List<String>.from(userMap["errors"]);
      String result = errors.join(" ");
      return result;
    } else if (response.statusCode == 404) {
      return ApiMessage.error;
    } else if (response.statusCode == 500) {
      if (response.body.isEmpty) {
        return ApiMessage.error;
      } else {
        var data = json.decode(response.body);
        return data["MessageList"][0];
      }
    } else {
      return ApiMessage.error;
    }
  }
}

class CommonMethods {
  /// Convert Boolean to Int
  /// Passing in ELMS API, not accepting boolean, BIT only
  static  int convertBoolToInt(bool data) {
    return data.toString().toUpperCase() == "TRUE" ? 1 : 0;
  }

  /// Validate if connected in Internet
  static Future<bool> isConnectedToInternet() async {
    bool isConnected = false;
    try {
      final result = await InternetAddress.lookup("www.google.com");
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) isConnected = true;
    } on SocketException catch (_) {
      throw "Please Connect to Internet.";
    }
    return isConnected;
  }

  /// Validate if email is Valid Email Address
  static bool isEmailValid(String email) {
    if (email.isEmpty) return false;
    return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
  }

  /// Compute Age from selected date
  static int calculateAge(DateTime birthDate) {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthDate.year;
    int month1 = currentDate.month;
    int month2 = birthDate.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = birthDate.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age;
  }

  static String prayerStatusValue(int prayerStatus) {
    String result = "";
    try {
      if (prayerStatus == 1) {
        result = "ONGOING";
      } else if (prayerStatus == 2) {
        result = "ANSWERED";
      } else if (prayerStatus == 3) {
        result = "DEFERRED";
      }
    } catch (ex) {
      rethrow;
    }
    return result;
  }
}

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

class TypesHelper {
  static int toInt(num? val) {
    try {
      if (val == null) {
        return 0;
      }
      if (val is int) {
        return val;
      } else {
        return val.toInt();
      }
    } catch (error) {
      print('Error');
      return 0;
    }
  }

  static double toDouble(num? val) {
    try {
      if (val == null) {
        return 0.0;
      }
      if (val is double) {
        return val;
      } else {
        return val.toDouble();
      }
    } catch (error) {
      print('Error');
      return 0.0;
    }
  }

  static String convertToString(var val) {
    try {
      if (val == null) {
        return "";
      }
      if (val is String) {
        return val;
      } else {
        return val.toString();
      }
    } catch (error) {
      print('Error');
      return "";
    }
  }

  static bool toBool(var val) {
    try {
      if (val.toString() == "1") {
        return true;
      } else if  (val.toString() == "0") {
        return false;
      }

      if (val == null) {
        return false;
      }
      if (val is bool) {
        return val;
      } else {
        return false;
      }
    } catch (error) {
      print('Error');
      return false;
    }
  }

  /// ex: Mar 23, 2023
  static String convertDateTimeFormat1(String data) {
    String result = "";
    try {
      result = DateFormat("MMM dd, yyyy").format(DateTime.parse(data));
    } catch (ex) {
     rethrow;
    }
    return result;
  }
}
