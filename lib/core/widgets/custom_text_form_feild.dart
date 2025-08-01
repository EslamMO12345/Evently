import 'package:evently/core/resourses/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormFeild extends StatelessWidget {
   CustomTextFormFeild({super.key, this.label,  this.prefixIcon,this.keyboardType = TextInputType.text, this.suffixIcon, this.hint,this.maxLines=1  });
  final String? label;
  final IconData? prefixIcon; 
  final IconData? suffixIcon; 
  TextInputType keyboardType;
  final String? hint; 
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(   
      maxLines:maxLines ,
      style: GoogleFonts.inter(color: ColorsManager.black,fontSize: 18.sp,fontWeight: FontWeight.w400 ),
       keyboardType:keyboardType,
      decoration: InputDecoration(
        suffixIcon:suffixIcon !=null? Icon(suffixIcon, color: ColorsManager.grey,) : null,
        labelText: label, 
        hintText: hint, 
        prefixIcon:prefixIcon != null ? Icon(prefixIcon,color: ColorsManager.grey,) : null,
      ),
    );
  }
}