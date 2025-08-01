import 'package:evently/core/widgets/custom_text_form_feild.dart';
import 'package:evently/core/widgets/categoey_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalizations =  AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold( 
         body: SafeArea(
           child: Column( 
            children: [  
              CustomTextFormFeild(hint: appLocalizations.search, prefixIcon: Icons.search,),
              Expanded(child: ListView.builder(itemCount: 5,itemBuilder: (context,index) => CategoryItemmm()))
           ],
           ),
         ),
      ),
    );
  }
}