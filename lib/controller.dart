import 'package:flutter/material.dart';

class PerfilController {
  PerfilController._();

  static var isDark = ValueNotifier(ThemeMode.system);
  //definimos como system pq assim por padrão ele pega o tema do sistema

  static setThemeMode(ThemeMode theme) {
    isDark.value = theme;
  }
}
