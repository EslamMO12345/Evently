import 'package:evently/evently_app.dart';
import 'package:evently/providers/config_provider.dart';
import 'package:evently/providers/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ThemeProvider(),),
    ChangeNotifierProvider(create: (context) => LanguageProvider(),),
  ], child: EventlyApp(),),
  );
}