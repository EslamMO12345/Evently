import 'package:evently/features/authentication/login/login.dart';
import 'package:evently/features/authentication/register/register.dart';
import 'package:evently/features/create_event/create_event.dart';
import 'package:evently/features/main_layout/main_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoutesManager {
  static const String login = '/login';
  static const String register = '/register';
  static const String mianlayout = '/mainlayout';
  static const String createEvent = '/createEvent';


  static Route? getRoute(RouteSettings settings){
    switch (settings.name)
    {
      case login:{
         return CupertinoPageRoute(builder: (context) => Login(), );
      } 

      case register:{
                 return CupertinoPageRoute(builder: (context) => Register(), );

      } 

      case mianlayout:{
                 return CupertinoPageRoute(builder: (context) => MainLayout(), );

      } 
      case createEvent:{
        return MaterialPageRoute(builder: (context) => CreateEvent(),);
      }
    }
    return null;
  }


}