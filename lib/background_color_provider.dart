import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dio/dio.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

const url = 'http://192.168.29.125:2200/isdarkmode';

class BackgroundColorProvider with ChangeNotifier {
  bool isdarkmodechecked = false;
  // bool isloading = false;
  // String data = 'global';

  // constructor   fetch theme

  Themeprovider() {
    fetchTheme();
  }

  Future<void> fetchTheme() async {
    // isloading = true;
    print('loading theme ');
    try {
      Response response = await Dio().get(url);

      print(response.data['isDarkMode']);
      isdarkmodechecked = response.data['isDarkMode'];

      notifyListeners();
    } catch (e) {
      print(' error = $e');
    } finally {
      // isloading = false;
      notifyListeners();
    }
  }

  Future<void> toggleDarkMode() async {
    try {
      isdarkmodechecked = !isdarkmodechecked;
      notifyListeners();

      await Dio().put(url, data: {'darkmode': isdarkmodechecked});
    } catch (e) {
      print(e);

      isdarkmodechecked = !isdarkmodechecked;
      notifyListeners();
    }
  }
}
