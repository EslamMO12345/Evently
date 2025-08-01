import 'package:evently/core/resourses/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract  class ThemeManager { 
  static final ThemeData light = ThemeData( 
    primaryColor: ColorsManager.blue, 
    useMaterial3: false,
      cardTheme: CardTheme(
        color: ColorsManager.ofWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        elevation: 20,
      ),
     // AppBar Widget
    appBarTheme: AppBarTheme( 
      backgroundColor:ColorsManager.whiteBlue , 
      foregroundColor: ColorsManager.black1C,
      titleTextStyle:GoogleFonts.roboto(fontSize: 22.sp, fontWeight: FontWeight.w400,),
      centerTitle: true,
    ),
     // backGroundColor => Scaffold
    scaffoldBackgroundColor: ColorsManager.whiteBlue, 
     // decoration => TextFormFeild Widget 
    inputDecorationTheme: InputDecorationTheme( 
      hintStyle: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: ColorsManager.grey),
      labelStyle: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: ColorsManager.grey),
        enabledBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: ColorsManager.grey,width: 1.w),
        ) ,
        focusedBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: ColorsManager.blue,width: 1.w),
        ),
        errorBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: ColorsManager.red,width: 1.w),
        ),
    ),  
    // ElevatedButton Widget
    elevatedButtonTheme: ElevatedButtonThemeData( 
      style: ElevatedButton.styleFrom( 
        padding: EdgeInsets.symmetric(vertical: 8),  
        shape: RoundedRectangleBorder( 
          borderRadius: BorderRadius.circular(14),  
        ),
        foregroundColor: ColorsManager.white, 
        backgroundColor: ColorsManager.blue, 
        textStyle: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: ColorsManager.white), 
       ),
    ),
    // textButton Widget
    textButtonTheme:TextButtonThemeData(style: TextButton.styleFrom( 
      textStyle: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w500, color: ColorsManager.black),
      foregroundColor: ColorsManager.blue,
    ),), 
    // bottomNavigationBar Widget
    bottomNavigationBarTheme: BottomNavigationBarThemeData( 
       type: BottomNavigationBarType.fixed, 
        backgroundColor: ColorsManager.blue, 
        selectedItemColor: ColorsManager.white,
        unselectedItemColor: ColorsManager.white,    
    ),
//   bottomAppBarTheme: BottomAppBarTheme( 
    
//   color: ColorsManager.white,
//   elevation: 8.0,
//   shape: const CircularNotchedRectangle(),
//   // notchMargin: 8.0, 
//   padding: EdgeInsets.zero, 
  
// ), 
iconTheme: IconThemeData( 
  color: ColorsManager.white
), 

textTheme: TextTheme(
  titleMedium: GoogleFonts.inter(fontSize: 24.sp, fontWeight: FontWeight.w500, color: ColorsManager.white),
  titleSmall: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w500, color: ColorsManager.white),
  labelMedium: GoogleFonts.inter(color: ColorsManager.black, fontSize: 20.sp,fontWeight: FontWeight.w900),
  labelSmall: GoogleFonts.inter(color: ColorsManager.blue, fontSize: 20.sp,fontWeight: FontWeight.w900),
  
)
  );
 


  static final ThemeData dark = ThemeData(  
    primaryColor: ColorsManager.drakBlue, 
    useMaterial3: false,
    cardTheme: CardTheme(
      color: ColorsManager.drakBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      elevation: 20,
    ),
    // AppBar Widget
    appBarTheme: AppBarTheme( 
      backgroundColor:ColorsManager.drakBlue , 
      foregroundColor: ColorsManager.blue,
      titleTextStyle:GoogleFonts.roboto(fontSize: 22.sp,color: ColorsManager.blue, fontWeight: FontWeight.w400,),
      centerTitle: true,
    ),
     // backGroundColor => Scaffold
    scaffoldBackgroundColor: ColorsManager.drakBlue, 
     // decoration => TextFormFeild Widget 
    inputDecorationTheme: InputDecorationTheme( 
      hintStyle: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: ColorsManager.blue),
      labelStyle: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: ColorsManager.ofWhite),
        enabledBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: ColorsManager.blue,width: 1.w),
        ) ,
        focusedBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: ColorsManager.blue,width: 1.w),
        ),
        errorBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: ColorsManager.red,width: 1.w),
        ),
    ),  
    // ElevatedButton Widget
    elevatedButtonTheme: ElevatedButtonThemeData( 
      style: ElevatedButton.styleFrom( 
        padding: EdgeInsets.symmetric(vertical: 8),  
        shape: RoundedRectangleBorder( 
          borderRadius: BorderRadius.circular(14),  
        ),
        foregroundColor: ColorsManager.white, 
        backgroundColor: ColorsManager.blue, 
        textStyle: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: ColorsManager.white), 
       ),
    ), 
    floatingActionButtonTheme: FloatingActionButtonThemeData( 
      backgroundColor: ColorsManager.drakBlue, 
      shape: StadiumBorder( 
        side: BorderSide(color:  ColorsManager.ofWhite, width: 4),
      )
    ),
    // textButton Widget
    textButtonTheme:TextButtonThemeData(style: TextButton.styleFrom( 
      textStyle: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w500, color: ColorsManager.black),
      foregroundColor: ColorsManager.blue,
    ),), 
    // bottomNavigationBar Widget
    bottomNavigationBarTheme: BottomNavigationBarThemeData( 
       type: BottomNavigationBarType.fixed, 
        backgroundColor: ColorsManager.drakBlue, 
        selectedItemColor: ColorsManager.ofWhite,
        unselectedItemColor: ColorsManager.ofWhite,    
    ),
//   bottomAppBarTheme: BottomAppBarTheme( 
    
//   color: ColorsManager.white,
//   elevation: 8.0,
//   shape: const CircularNotchedRectangle(),
//   // notchMargin: 8.0, 
//   padding: EdgeInsets.zero, 
  
// ),
iconTheme: IconThemeData( 
  color: ColorsManager.ofWhite
), 

textTheme: TextTheme(

  titleMedium: GoogleFonts.inter(fontSize: 24.sp, fontWeight: FontWeight.w500, color: ColorsManager.ofWhite),
  titleSmall: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w500, color: ColorsManager.ofWhite),
  labelMedium: GoogleFonts.inter(color: ColorsManager.black, fontSize: 20.sp,fontWeight: FontWeight.w900),
  labelSmall: GoogleFonts.inter(color: ColorsManager.blue, fontSize: 20.sp,fontWeight: FontWeight.w900),
  
)
  );
}