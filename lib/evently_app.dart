import 'package:evently/core/config/theme/theme_manager.dart';
import 'package:evently/core/routes/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        themeMode: ThemeMode.dark,
        locale: Locale('en'),
        onGenerateRoute:RoutesManager.getRoute,
      ),
    );
  }
}