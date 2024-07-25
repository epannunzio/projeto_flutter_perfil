import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThemeDataPerfil {
  static final primaryColor = Color.fromARGB(255, 13, 49, 116);
  ThemeDataPerfil._();

  static ThemeData getLight() {
    return ThemeData(
      primaryColorLight: Colors.black,
      primaryColor: primaryColor,
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
      ),
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          color: primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      dividerColor: Colors.black,
      listTileTheme: ListTileThemeData(
        textColor: Colors.black,
        iconColor: primaryColor,
      ),
      snackBarTheme: SnackBarThemeData(
        actionTextColor: primaryColor,
      ),
    );
  }

  static ThemeData getDark() {
    return ThemeData(
      primaryColorLight: Colors.white,
      primaryColor: primaryColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
      ),
      scaffoldBackgroundColor: Colors.black,
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          color: primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        bodySmall: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
      dividerColor: Colors.white,
      listTileTheme: ListTileThemeData(
        textColor: Colors.white,
        iconColor: primaryColor,
      ),
      snackBarTheme: SnackBarThemeData(
        actionTextColor: primaryColor,
      ),
    );
  }
}
