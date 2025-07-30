import 'dart:ui_web';

import 'package:evently/core/resourses/assets_manger.dart';
import 'package:evently/core/resourses/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItemmm extends StatelessWidget {
  const CategoryItemmm({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container( 
      margin: REdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(16.sp),
        border: Border.all(color: ColorsManager.blue,), 
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(ImageAsset.meeting))
      ), 
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card( 
            color: ColorsManager.whiteBlue,
            child: Padding(
              padding:  REdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: Column( 

                children: [ 
                  Text('24', style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.bold, color: ColorsManager.blue),),
                  Text('Nov', style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.bold, color: ColorsManager.blue),),
                ],
              ),
            ),
          ),
          SizedBox(height: 120.h,),
         // Spacer(), 
          Padding(
            padding: REdgeInsets.all(8.0),
            child: Card(
             // color: Theme.of(context).cardTheme!,
              //color: ColorsManager.whiteBlue,
              child: Row( 
                children: [ 
                 Expanded(child: Text('Meeting for Updating The Development Method ',style: GoogleFonts.inter(),)),
                 //Spacer(),
                 Icon(Icons.favorite, color: ColorsManager.black,)
                ],
              ),
            ),
          )
        ],
      ),
      
    );
  }
}