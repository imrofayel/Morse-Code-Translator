import 'package:flutter/material.dart';

class Themes{

  static ThemeData theme = ThemeData(
    
    colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.black,
          onPrimary: Colors.white,
          secondary: Colors.white,
          onSecondary: Colors.black,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.white,
          onBackground: Colors.black,
          surface: Colors.transparent,
          onSurface: Colors.black,
    ),

    fontFamily: "MS Sans Serif",

    appBarTheme: AppBarTheme(

      backgroundColor: Colors.grey.shade50,

      toolbarHeight: 70,

    ),
  );
}