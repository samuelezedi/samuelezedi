import 'package:flutter/material.dart';

class AppTheme {
  final lightTheme = ThemeData(
    primarySwatch: Colors.green,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'Product Sans',
    accentColor: Color(0xff1f4037),
  

  );

  final darkTheme = ThemeData(
    primaryColor: Colors.black,
    fontFamily: 'Product Sans',
    accentColor: Color(0xff1f4037),
    primaryTextTheme: TextTheme(
        bodyText1: TextStyle(
          color: Colors.white,
        ),
        bodyText2: TextStyle(color: Colors.white),
        button: TextStyle(color: Colors.white)),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color(0xffE60023),
    ),
    accentTextTheme: TextTheme(bodyText1: TextStyle(color: Colors.white)),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder:
      OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      focusedBorder:
      OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      labelStyle: TextStyle(color: Colors.white),
      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
    ),
    textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white, fontSize: 18)),
  );
}
