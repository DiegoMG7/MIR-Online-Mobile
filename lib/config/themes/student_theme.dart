import 'package:flutter/material.dart';

//este tema va a ser el tema por default, si inician sesion y son maestros ya se les cambia a su tema respectivo

const Color _customColor = Color(0xFF5C11D4);

const List<Color> _colorThemes = [
  _customColor,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0}) : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length -1, 'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(useMaterial3: true);
  }
}
