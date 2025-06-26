import 'package:flutter/material.dart';

final ThemeData customDarkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.indigo,
  scaffoldBackgroundColor: Color(0xFF181924),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.indigo,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(color: Colors.white),
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    bodyMedium: TextStyle(color: Colors.white70, fontSize: 16),
    titleMedium: TextStyle(color: Colors.white60, fontSize: 14),
  ),
  chipTheme: ChipThemeData(
    backgroundColor: Colors.indigo.shade700,
    labelStyle: TextStyle(color: Colors.white),
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  ),
);
