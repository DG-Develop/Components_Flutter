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
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      scaffoldBackgroundColor: Colors.black);
}
