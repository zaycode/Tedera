import 'package:flutter/material.dart';
import 'package:tedera/util/color.dart';
import 'package:tedera/util/util.dart';

class CustomTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: CustomColor.primary,

    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Color.fromRGBO(120, 120, 120, 1),
      ),
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0,
        textTheme: TextTheme(
          headline6: TextStyle(
            color: CustomColor.darkBlue,
            fontSize: 16,
            fontWeight: FontWeight.w700
          )
        ),
    ),

    fontFamily: 'Montserrat',

    iconTheme: IconThemeData(
      color: Color.fromRGBO(120, 120, 120, 1),
    ),
  );
}
