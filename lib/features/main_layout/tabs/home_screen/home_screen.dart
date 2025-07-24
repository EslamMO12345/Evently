import 'package:evently/core/resourses/colors_manager.dart';
import 'package:evently/core/widgets/categoey_item.dart';
import 'package:evently/core/widgets/custom_tab_bar.dart';
import 'package:evently/features/main_layout/tabs/home_screen/category_item.dart';
import 'package:evently/models/category.dart';


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key,});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  int isSelect =0; 
  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
     body: Column( 
      children: [ 
        Container(
          padding: REdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration( 
            color: Theme.of(context).primaryColor, 
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)), 
          ), 
          child: Padding(
            padding:  REdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(  
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    Column(  
                      mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    Text('Welcome Back', style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w400, color: ColorsManager.white),),
                    Text('Eslam Mohamd', style: GoogleFonts.inter(fontSize: 24.sp, fontWeight: FontWeight.w500, color: ColorsManager.white),), 
                    SizedBox(height: 8.h,),
                    Row(
                      children: [ 
                        Icon(Icons.location_on, color: ColorsManager.white,), 
                        SizedBox(width: 4.w,),
                        Text('Cairo, Egypt', style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w500, color: ColorsManager.white),),
                      ],
                    ),
                    ],
                    ),  
                    Spacer(),
                    Icon(Icons.light_mode, color: ColorsManager.white,), 
                    Card(child: Padding(
                      padding: REdgeInsets.all(8.0),
                      child: Text('EN', style: GoogleFonts.inter(color: ColorsManager.blue, fontSize: 14, fontWeight:FontWeight.bold),),
                    )),
                  ],
                ),
                SizedBox(height: 10,),
               CustomTabBar(category: CategoryModel.categoriesWithAll, selectedForGroundColor:ColorsManager.blue ,selectedbackGroundColor: ColorsManager.white,unSelectedbackGroundColor:Colors.transparent,unSelectedForGroundColor:ColorsManager.whiteBlue ,),
              ],
            ),
          ),
        ), 
          SizedBox(height: 10.h,), 

          Expanded(child: ListView.builder(
           itemCount: 10,
          itemBuilder: (context, index) => CategoryItemmm(), 
          ), 
          )
        // CategoryItemmm(),
      ],
     ), 
    );
  }
}