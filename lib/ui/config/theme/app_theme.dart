import 'package:flutter/material.dart';

//Paleta de Colores
const Color _bgCard = Color(0xFF30313A);
const Color _bgText = Color(0xFFE6C068);

const List<Color> _colorThemes = [
  _bgCard,
  _bgText,
  Colors.black,
  Colors.red,
  Colors.blue,
  Colors.green
];

const Map<String,Color> _colors = {
  "primary": Color(0xFF1F2029),
  "secondary": Color(0xFFE6C068),
  "third": Color(0xFF908E8E),
  "fourth": Color(0xFF30313A)
};

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0
  }) : assert(selectedColor >= 0 && selectedColor < _colorThemes.length - 1,
  'No seleccionaste un color en el rango valido!');

  ThemeData theme(){
    return ThemeData(useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]);
  }

  Color color(String color) {
    if (_colors.containsKey(color)) {
      return _colors[color]!;
    } else {
      // Si la clave no existe en el mapa, puedes devolver un valor predeterminado
      return Colors.black; // O el color que desees como valor predeterminado
    }
  }

}