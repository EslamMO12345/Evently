import 'package:flutter/cupertino.dart';

import '../core/prefs_manager/prefs_manager.dart';

 class LanguageProvider extends ChangeNotifier{
  static String currentLang = PrefsManager.getLanguage() ?? 'en';

  void ChangeAppLang (String newLang){
    if(currentLang == newLang) return;
    currentLang = newLang;
    PrefsManager.setLanguage(currentLang);
    notifyListeners();
  }
  static bool get isEnglish => currentLang =='en';
}