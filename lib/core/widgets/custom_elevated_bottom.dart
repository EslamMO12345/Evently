import 'package:evently/core/resourses/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedBottom extends StatelessWidget {
   CustomElevatedBottom({super.key, required this.title });
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton( 
       onPressed: (){},
    
     child:Text(title));
  }
}