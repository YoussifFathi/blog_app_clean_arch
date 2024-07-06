import 'package:flutter/material.dart';

import 'color_pallete.dart';

class AppTheme {
  static final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPalette.backgroundColor,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 70,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      )
    )
  );
}