import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get theme {
    return ThemeData(
      brightness: Brightness.dark,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColorDark: Color(0xFF303030),
      accentColor: Colors.orange,
      hoverColor: Colors.white24,
      shadowColor: Colors.white70,
      fontFamily: "Ubuntu",
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          shadowColor: Color(0xFF303030),
          minimumSize: Size(150, 40),
        ),
      ),
    );
  }
}
