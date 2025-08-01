
import 'package:evently/core/resourses/assets_manger.dart';
import 'package:evently/core/routes/routes_manager.dart';
import 'package:evently/core/widgets/custom_elevated_bottom.dart';
import 'package:evently/core/widgets/custom_text_bottom.dart';
import 'package:evently/core/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' ;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Login extends StatelessWidget {
   const Login({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;
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
            CustomTextFormFeild(label: appLocalizations.email, prefixIcon: Icons.mail,),
            SizedBox(height: 16.h,), 
            CustomTextFormFeild(label: appLocalizations.password, prefixIcon: Icons.person, suffixIcon: Icons.visibility_off,),
            Container(alignment: Alignment.centerRight ,child: CustomTextBottom(title: appLocalizations.re_password, onPressed: (){

            },)), 
            SizedBox(height: 12.h,), 
            CustomElevatedBottom(title: appLocalizations.login),
             Row(  
              children: [  
                Text( appLocalizations.dont_have_account,),
                CustomTextBottom(title: appLocalizations.create_account, onPressed: (){
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