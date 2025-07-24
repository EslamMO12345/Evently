import 'package:evently/core/resourses/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextBottom extends StatelessWidget {
   CustomTextBottom({super.key, required this.title,required this.onPressed });
   final String title; 
   VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, 
    
    child:Text(title, style:TextStyle(decoration: TextDecoration.underline, color: ColorsManager.blue, fontWeight: FontWeight.w400, fontSize: 16.sp, fontStyle: FontStyle.italic),),);
  }
}