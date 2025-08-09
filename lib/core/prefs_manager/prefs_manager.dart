import 'package:evently/core/widgets/constant_manager.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class PrefsManager{
 static  String saveLang = 'en';
 static late SharedPreferences prefs;
static Future<void> init()async{
   prefs = await SharedPreferences.getInstance();
 }

  static void setLanguage (String Language)async{
    await prefs.setString(CashConstant.languageKey, Language);
  }

  static String? getLanguage(){
   return  prefs.getString(CashConstant.languageKey);
  }

  static void saveTheme(ThemeMode theme)async{
   if(theme == ThemeMode.light){
     prefs.setString(CashConstant.ThemeKey, 'light');
   }else{
     prefs.setString(CashConstant.ThemeKey, 'dark');
   }

  }
 static ThemeMode? getTheme(){
String? savedTheme=  prefs.getString(CashConstant.ThemeKey);
   if(savedTheme == null){
     return null;
   }else{
      if(savedTheme == 'light'){
        return ThemeMode.light;
      }else{
        return ThemeMode.dark;

      }
   }
  }
}