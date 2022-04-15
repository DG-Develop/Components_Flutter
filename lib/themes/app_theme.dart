import 'package:flutter/material.dart';

class AppTheme {
  /* Colores */
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      /* primary */
      primaryColor: primary,
      /* AppBar Theme */
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      /* TextButton Theme */
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
      /* FloatingActionsButtons */
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary),
      /* ElevatedButon */
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: primary, shape: const StadiumBorder(), elevation: 0)));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      scaffoldBackgroundColor: Colors.black,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 5));
}
