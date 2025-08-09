import 'package:evently/core/extentions/date_extention.dart';
import 'package:evently/core/resourses/assets_manger.dart';
import 'package:evently/core/resourses/colors_manager.dart';
import 'package:evently/core/widgets/custom_elevated_bottom.dart';
import 'package:evently/core/widgets/custom_tab_bar.dart';
import 'package:evently/core/widgets/custom_text_bottom.dart';
import 'package:evently/core/widgets/custom_text_form_feild.dart';
import 'package:evently/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(appLocalizations.create_event),
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
                CustomTabBar(category: CategoryModel.GetCategoriesWithoutAll(context),
                 selectedForGroundColor:ColorsManager.whiteBlue ,
                 selectedbackGroundColor:ColorsManager.blue ,
                 unSelectedForGroundColor:ColorsManager.blue,
                 unSelectedbackGroundColor:Colors.transparent,
                ),

               SizedBox(height: 16.h,),
               Text(appLocalizations.title),
               SizedBox(height: 8.h),
               CustomTextFormFeild(
                prefixIcon: Icons.edit,
                hint: appLocalizations.event_title,
               ),

               SizedBox(height: 16.h,),
               Text(appLocalizations.description),
               SizedBox(height: 8.h),
               CustomTextFormFeild(
                //prefixIcon: Icons.edit,
                hint: appLocalizations.event_description,
                maxLines: 4,
               ),

               SizedBox(height: 16.h,),
               Row(
                children: [
                  Icon(Icons.date_range_rounded,color: ColorsManager.black1C,),
                  SizedBox(width: 8.w,),
                  Text(selectedDate.toFormatDate),
                  Spacer(),
                  CustomTextBottom(title: appLocalizations.choose_date, onPressed: (){
                    chooseEventDate();
                  })
                ],
               ),
                SizedBox(height: 16.h,),
               Row(
                children: [
                  Icon(Icons.access_time_rounded,color: ColorsManager.black1C,),
                  SizedBox(width: 8.w,),
                  Text(selectedDate.formatTime),
                  Spacer(),
                  CustomTextBottom(title: appLocalizations.choose_time, onPressed: (){
                    chooseEventTime();
                  })
                ],
               ),

               SizedBox(height: 16.h,),
               CustomElevatedBottom(title: appLocalizations.add_event)


            ],
          ),
        ),
      ),
    );
  }

  void chooseEventDate()async {
  selectedDate= await showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime.now().add(Duration(days: 365)))?? selectedDate;
  selectedDate.copyWith(hour: selectedTime.hour, minute: selectedTime.minute);
  setState(() {

  });
  }

  void chooseEventTime() async{
   selectedTime= await showTimePicker(context: context, initialTime: TimeOfDay.now()) ?? selectedTime;
 selectedDate = selectedDate.copyWith(hour: selectedTime.hour, minute: selectedTime.minute);
    setState(() {

    });
  }

  
}