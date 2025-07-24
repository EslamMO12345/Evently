import 'dart:ui_web';

import 'package:evently/core/resourses/assets_manger.dart';
import 'package:evently/core/routes/routes_manager.dart';
import 'package:evently/core/widgets/custom_elevated_bottom.dart';
import 'package:evently/core/widgets/custom_text_bottom.dart';
import 'package:evently/core/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {
   Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  REdgeInsets.symmetric(horizontal: 16),
        child: Column(   
          children: [ 
            Image.asset(ImageAsset.eventlyLogo), 
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 24.h,), 
            CustomTextFormFeild(label: 'E-mail', prefixIcon: Icons.mail,), 
            SizedBox(height: 16.h,), 
            CustomTextFormFeild(label: 'Password', prefixIcon: Icons.person, suffixIcon: Icons.visibility_off,),
            Container(alignment: Alignment.centerRight ,child: CustomTextBottom(title: 'Forget Password', onPressed: (){

            },)), 
            SizedBox(height: 12.h,), 
            CustomElevatedBottom(title: 'Login'), 
             Row(  
              children: [  
                Text('Don\'t Have Account? ',), 
                CustomTextBottom(title: 'Create Account', onPressed: (){
                  Navigator.pushReplacementNamed(context, RoutesManager.register);
                },),
              ],
            )
            ],
            )
          ],
        ),
      ),
    );
  }
}