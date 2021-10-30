// ignore_for_file: file_names, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors, missing_return, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier{
  static bool isDarkTheme = true;
  ThemeMode get currentTheme => isDarkTheme ? ThemeMode.dark : ThemeMode.light ;

  void toggleTheme(){
    isDarkTheme = ! isDarkTheme;
    notifyListeners();

  }

  static ThemeData get lightTheme{
    return ThemeData(
      primaryColor: Colors.white,
      backgroundColor: Colors.white,
      canvasColor: Colors.white,
      // ignore: deprecated_member_use
      accentColor: Color.fromRGBO(193, 191, 250, 1),
      textTheme: TextTheme(
        headline1: TextStyle(color: Colors.black),
        headline2: TextStyle(color: Colors.black),
        headline3: TextStyle(color: Colors.black),
        headline4: TextStyle(color: Colors.black),
        headline5: TextStyle(color: Colors.black),
        headline6: TextStyle(color: Colors.black),
        bodyText1: TextStyle(color: Colors.black),
        bodyText2: TextStyle(color: Colors.black),
      ),
    );

  }

  static ThemeData get darkTheme{
    return ThemeData(
      primaryColor: Colors.white54,
      backgroundColor: Colors.black,
      canvasColor: Colors.black,
      brightness: Brightness.dark,
      // ignore: deprecated_member_use
      accentColor: Color.fromRGBO(193, 191, 250, 1),
      textTheme: TextTheme(
        headline1: TextStyle(color: Colors.white),
        headline2: TextStyle(color: Colors.white),
        headline3: TextStyle(color: Colors.white),
        headline4: TextStyle(color: Colors.white),
        headline5: TextStyle(color: Colors.white),
        headline6: TextStyle(color: Colors.white),
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white),
      ),
    );
  }

}
