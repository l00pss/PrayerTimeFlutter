import 'package:flutter/material.dart';

class ThemeFormat{
  static ThemeData DARK() {
    return ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFF2f3030),
        fontFamily: 'Raleway',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 55.0, fontWeight: FontWeight.normal,color: Colors.white),
          headline2: TextStyle(fontSize: 45.0, fontWeight: FontWeight.normal,color: Colors.white),
          headline3: TextStyle(fontSize: 40.0, fontWeight: FontWeight.normal,color: Colors.white , fontFamily: "Prompt"),
          headline4: TextStyle(fontSize: 30.0, fontWeight: FontWeight.normal,color: Colors.white),
          headline5: TextStyle(fontSize: 35.0, fontWeight: FontWeight.normal,color: Colors.white),
          headline6: TextStyle(fontSize: 30.0, fontWeight: FontWeight.normal,color: Colors.white,fontFamily: "Prompt"),
          bodyText2: TextStyle(fontSize: 20.0, fontFamily: 'Prommpt',color: Colors.white),
          bodyText1: TextStyle(fontSize: 25.0, fontFamily: 'Prommpt',color: Colors.white),
        ));
  }
  static ThemeData LIGHT() {
    return ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xFFfafafb),
        fontFamily: 'Raleway',
        colorScheme: ColorScheme(
          primary: Colors.white70,
          onPrimary: Colors.black,
          primaryVariant: Colors.white70,

          background: Colors.white70,
          onBackground: Colors.black,

          secondary: Colors.white70,
          onSecondary: Colors.white,
          secondaryVariant: Colors.white70,

          error: Colors.black,
          onError: Colors.white,

          surface: Colors.white,
          onSurface: Colors.black,

          brightness: Brightness.light,
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 55.0, fontWeight: FontWeight.normal,color: Colors.black),
          headline2: TextStyle(fontSize: 45.0, fontWeight: FontWeight.normal,color: Colors.black),
          headline3: TextStyle(fontSize: 40.0, fontWeight: FontWeight.normal,color: Colors.black , fontFamily: "Prompt"),
          headline4: TextStyle(fontSize: 30.0, fontWeight: FontWeight.normal,color: Colors.black),
          headline5: TextStyle(fontSize: 35.0, fontWeight: FontWeight.normal,color: Colors.black),
          headline6: TextStyle(fontSize: 30.0, fontWeight: FontWeight.normal,color: Colors.black,fontFamily: "Prompt"),
          bodyText2: TextStyle(fontSize: 20.0, fontFamily: 'Prommpt',color: Colors.black),
          bodyText1: TextStyle(fontSize: 25.0, fontFamily: 'Prommpt',color: Colors.black),
        ));
  }

}