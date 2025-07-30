import 'package:evently/core/config/theme/theme_manager.dart';
import 'package:evently/core/routes/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EventlyApp extends StatelessWidget {
  const EventlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(393, 841),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:(context,child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute:RoutesManager.mianlayout,
        theme:ThemeManager.light,
        darkTheme:ThemeManager.dark,
        themeMode: ThemeMode.light,

        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],

       locale:Locale("en"),
        supportedLocales: [
          Locale('en'), // English
          Locale('ar'), // Arabic
        ],

        onGenerateRoute:RoutesManager.getRoute,
      ),
    );
  }
}