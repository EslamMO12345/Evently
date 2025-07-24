import 'package:evently/core/resourses/assets_manger.dart';
import 'package:evently/core/resourses/colors_manager.dart';
import 'package:evently/core/routes/routes_manager.dart';
import 'package:evently/core/widgets/custom_elevated_bottom.dart';
import 'package:evently/core/widgets/custom_text_bottom.dart';
import 'package:evently/core/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
        title: Text('Register'),
      ),
      body: Padding(
        padding:  REdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(  
            children: [ 
            Image.asset(ImageAsset.eventlyLogo), 
            Column(  
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [ 
                SizedBox(
              height: 24.h,
            ),
            CustomTextFormFeild(label: 'Name', prefixIcon: Icons.person,keyboardType: TextInputType.name,),
            SizedBox(height: 16.h,) 
            ,CustomTextFormFeild(label: 'E-mail', prefixIcon: Icons.mail,keyboardType: TextInputType.emailAddress,),
            SizedBox(height: 16.h,), 
            CustomTextFormFeild(label: 'Password', prefixIcon: Icons.lock,keyboardType: TextInputType.visiblePassword,suffixIcon: Icons.visibility_off,),
            SizedBox(height: 16.h,),
             CustomTextFormFeild(label: 'Re Password', prefixIcon: Icons.lock,keyboardType: TextInputType.visiblePassword,suffixIcon: Icons.visibility_off,),
            SizedBox(height: 16.h,), 
            CustomElevatedBottom(title: 'Create Account',), 

            Row(
               
              children: [  
                Text('Already Have Account? ',), 
                CustomTextBottom(title: 'Login', onPressed: (){
                  Navigator.pushReplacementNamed(context, RoutesManager.login);
                },),
              ],
            )
              ],
            )
            ],
          ),
        ),
      ),
    );
  }
}