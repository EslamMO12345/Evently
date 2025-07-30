import 'package:evently/core/resourses/assets_manger.dart';
import 'package:evently/core/resourses/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

typedef OnChange = void Function(String?);
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> { 
  String selectedLanguage = 'English';
  String selectedTheme = 'Light';
  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;
    return Scaffold( 
      body: Column(  
       // mainAxisAlignment: MainAxisAlignment.start,
        children: [ 
          SafeArea(
            child: Container(  
              decoration: BoxDecoration( 
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(64)), 
                color: ColorsManager.blue,
              ), 
              height: 200.h,
               child: Padding(
                 padding: REdgeInsets.all(16.0),
                 child: Row( 
                  children: [
                    Image.asset(ImageAsset.RoutePic),
                    SizedBox(width: 16.w,), 
                    Column( 
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [ 
                        Text('Eslam Mohamad',style: GoogleFonts.inter(color: ColorsManager.whiteBlue, fontSize:24.sp ,fontWeight: FontWeight.w700),),
                        Text('johnsafwat.route@gmail.com',style: GoogleFonts.inter(color: ColorsManager.whiteBlue, fontSize:16.sp ,fontWeight: FontWeight.w500),)
                      ],
                    )
                  ],
                 ),
               ),
            ),
          
          ), 

         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
            children: [
           builDropDown(
            selectedItemVeiw: selectedLanguage,
            menueItems: ['English', 'العربيه'], textline: appLocalizations.language,onChange: (newLang){
             selectedLanguage = newLang!;
             setState(() {
               
             });
           }),
           builDropDown(
            selectedItemVeiw: selectedTheme,
            textline: appLocalizations.theme, menueItems: [appLocalizations.light,appLocalizations.dark], onChange: (newTheme){
             setState(() {
               selectedTheme = newTheme!;
             });
           })
            ],
           ),
         )
        ],
      ),
    );
  }

  Widget builDropDown ({required String textline,required List<String> menueItems,
   required OnChange onChange, 
   required String selectedItemVeiw,
   }){
    return Column(  
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
           
            Text(textline, style: Theme.of(context).textTheme.labelMedium,), 
            SizedBox(height: 8.h,),
            SizedBox( 
              height: 75.h,
              child: Container( 
                padding: REdgeInsets.all(12),
                decoration: BoxDecoration( 
                  border: Border.all(color: ColorsManager.blue), 
                  borderRadius: BorderRadius.circular(16),
                ), 
                child: Row(
                  children: [
                    Text(selectedItemVeiw,style: Theme.of(context).textTheme.labelSmall),
                    Spacer(),
                    DropdownButton<String>(
                      underline: Text(''),
                      items: menueItems.map((String value){
                          return DropdownMenuItem<String>(
                            value: value,
                          child: Text(value));
                      }).toList(), onChanged: onChange
                      
                      ),
                  ],
                ),
              ),
            ),
      ],
    );
  }
}