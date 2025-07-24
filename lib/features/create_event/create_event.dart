import 'package:evently/core/resourses/assets_manger.dart';
import 'package:evently/core/resourses/colors_manager.dart';
import 'package:evently/core/widgets/custom_elevated_bottom.dart';
import 'package:evently/core/widgets/custom_tab_bar.dart';
import 'package:evently/core/widgets/custom_text_bottom.dart';
import 'package:evently/core/widgets/custom_text_form_feild.dart';
import 'package:evently/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateEvent extends StatelessWidget {
  const CreateEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Create Event'),
      ), 
      body: Padding(
        padding: REdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.stretch, 
            children: [ 
              ClipRRect(
                borderRadius: BorderRadius.circular(24.sp),
                child: Image.asset(ImageAsset.meeting)),
                SizedBox(height: 4.h,),
                CustomTabBar(category: CategoryModel.categories,
                 selectedForGroundColor:ColorsManager.whiteBlue ,
                 selectedbackGroundColor:ColorsManager.blue ,
                 unSelectedForGroundColor:ColorsManager.blue,
                 unSelectedbackGroundColor:Colors.transparent,
                ),
            
               SizedBox(height: 16.h,), 
               Text('Title'),  
               SizedBox(height: 8.h),
               CustomTextFormFeild( 
                prefixIcon: Icons.edit,
                hint: 'Event Title',
               ),  
          
               SizedBox(height: 16.h,), 
               Text('Description'),  
               SizedBox(height: 8.h),
               CustomTextFormFeild( 
                //prefixIcon: Icons.edit,
                hint: 'Event Discription', 
                maxLines: 4,
               ), 
               
               SizedBox(height: 16.h,), 
               Row( 
                children: [ 
                  Icon(Icons.date_range_rounded,color: ColorsManager.black1C,), 
                  SizedBox(width: 8.w,), 
                  Text('Event Date'), 
                  Spacer(), 
                  CustomTextBottom(title: 'Choose Date', onPressed: (){
                    showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime.now().add(Duration(days: 365)));
                  })
                ],
               ), 
                SizedBox(height: 16.h,),
               Row( 
                children: [ 
                  Icon(Icons.access_time_rounded,color: ColorsManager.black1C,), 
                  SizedBox(width: 8.w,), 
                  Text('Event Time'), 
                  Spacer(), 
                  CustomTextBottom(title: 'Choose Time', onPressed: (){
                    showTimePicker(context: context, initialTime: TimeOfDay.now());
                  })
                ],
               ), 

               SizedBox(height: 16.h,), 
               CustomElevatedBottom(title: 'Add Event')
          
          
            ],
          ),
        ),
      ),
    );
  }
}