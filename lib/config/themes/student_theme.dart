import 'package:flutter/material.dart';

//este tema va a ser el tema por default, si inician sesion y son maestros ya se les cambia a su tema respectivo

const Color _headerColor = Color(0xFF279CD7);
const Color _bodyTextColor = Color(0xFF852679);

// ignore: unused_element
const List<Color> _colorThemes = [
  _headerColor,
  _bodyTextColor
];

class AppTheme {
  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        
        textTheme: const TextTheme(
            displayLarge: TextStyle(
              color: _headerColor,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),

            bodyMedium: TextStyle(
              color: _bodyTextColor,
              fontSize: 22,
            )
        )
    );
  }
}
