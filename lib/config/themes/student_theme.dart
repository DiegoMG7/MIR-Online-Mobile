import 'package:flutter/material.dart';

//este tema va a ser el tema por default, si inician sesion y son maestros ya se les cambia a su tema respectivo

const Color secundaryColor = Color(0xFF279CD7);
const Color mainColor = Color(0xFF852679);
const Color disabledColor = Color(0xFFCECECE);
const Color greyBackgroundColor = Color(0xFFF4F9FC);


//const List<Color> colorThemes = [secundaryColor, mainColor, disabledColor];

class AppTheme {
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      primaryColor: mainColor,
      canvasColor: greyBackgroundColor,
      primaryColorLight: secundaryColor,
    
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: secundaryColor,
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: TextStyle(
          color: mainColor,
          fontSize: 22,
        ),
        labelLarge: TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }
}
