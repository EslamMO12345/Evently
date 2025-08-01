import 'package:flutter/cupertino.dart';

class LanguageProvider extends ChangeNotifier{
  String currentLang = 'en';

  void ChangeAppLang (String newLang){
    if(currentLang == newLang) return;
    currentLang = newLang;
    notifyListeners();
  }
  bool get isEnglish =>currentLang== 'en';
}