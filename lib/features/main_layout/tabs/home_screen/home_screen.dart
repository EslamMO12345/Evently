import 'package:evently/core/resourses/colors_manager.dart';
import 'package:evently/core/widgets/categoey_item.dart';
import 'package:evently/core/widgets/custom_tab_bar.dart';
import 'package:evently/models/category.dart';
import 'package:evently/providers/config_provider.dart';
import 'package:evently/providers/language_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key,});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int isSelect =0;
  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;
    var themeProvider = Provider.of<ThemeProvider>(context);
    var langProvider = Provider.of<LanguageProvider>(context);
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
                    Text(appLocalizations.welcome_back, style: Theme.of(context).textTheme.titleSmall),
                    Text('Eslam Mohamd', style: Theme.of(context).textTheme.titleMedium,),
                    SizedBox(height: 8.h,),
                    Row(
                      children: [ 
                        Icon(Icons.location_on,),
                        SizedBox(width: 4.w,),
                        Text('Cairo, Egypt', style: Theme.of(context).textTheme.titleSmall),
                      ],
                    ),
                    ],
                    ),  
                    Spacer(),
                    InkWell(
                      onTap: () {
                       // themeProvider.currentTheme;
                        themeProvider.ChangeAppTheme(themeProvider.isDark? ThemeMode.light : ThemeMode.dark);
                      },
                      child:Icon(themeProvider.currentTheme == ThemeMode.light?  Icons.light_mode : Icons.dark_mode,),
                    ),
                    InkWell(
                      onTap: () {
                        //langProvider.currentLang;
                        langProvider.ChangeAppLang(LanguageProvider.isEnglish? 'ar' : 'en');
                      },
                      child: Card(child: Padding(
                        padding: REdgeInsets.all(8.0),
                        child: Text(LanguageProvider.currentLang == 'en' ? 'EN' : 'Ar', style: Theme.of(context).textTheme.labelSmall/*.copyWith(
                        fontSize: 16.sp,
                      ),*/
                        ),
                      )),
                    )


                  ],
                ),
                SizedBox(height: 10,),
               CustomTabBar(category: CategoryModel.GetCategoriesWithAll(context), selectedForGroundColor:ColorsManager.blue ,selectedbackGroundColor: ColorsManager.white,unSelectedbackGroundColor:Colors.transparent,unSelectedForGroundColor:ColorsManager.whiteBlue ,),
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