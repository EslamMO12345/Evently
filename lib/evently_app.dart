import 'package:evently/core/config/theme/theme_manager.dart';
import 'package:evently/core/routes/routes_manager.dart';
import 'package:evently/providers/config_provider.dart';
import 'package:evently/providers/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class EventlyApp extends StatelessWidget {
  const EventlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    var langProvider = Provider.of<LanguageProvider>(context);
   // var configProvider = Provider.of<ConfigProvider>(context);

    return ScreenUtilInit(
      designSize: Size(393, 841),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:(context,child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute:RoutesManager.mianlayout,
        theme:ThemeManager.light,
        darkTheme:ThemeManager.dark,
        themeMode: themeProvider.currentTheme,

        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],

       locale:Locale(langProvider.currentLang),
        supportedLocales: [
          Locale('en'), // English
          Locale('ar'), // Arabic
        ],

        onGenerateRoute:RoutesManager.getRoute,
      ),
    );
  }
}