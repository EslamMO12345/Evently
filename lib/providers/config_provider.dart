import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode currentTheme = ThemeMode.light;
  void ChangeAppTheme (ThemeMode newTheme){
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }
  bool get isDark => currentTheme == ThemeMode.dark;
}
