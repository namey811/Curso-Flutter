import 'package:flutter/material.dart';

const Color _customColor = Color(0XFF49149F);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.red,
  Colors.purple,
  Colors.pink,
  Colors.teal,
  Colors.orange,
  Colors.brown,
  Colors.black,
  Colors.grey,
  Colors.white,
];

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Seleccione un valor entre 0 y ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
