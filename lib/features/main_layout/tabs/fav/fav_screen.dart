import 'package:evently/core/resourses/colors_manager.dart';
import 'package:evently/core/widgets/custom_text_form_feild.dart';
import 'package:evently/core/widgets/categoey_item.dart';
import 'package:flutter/material.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold( 
         body: SafeArea(
           child: Column( 
            children: [  
              CustomTextFormFeild(hint: 'SearchForEvent', prefixIcon: Icons.search,), 
              Expanded(child: ListView.builder(itemCount: 5,itemBuilder: (context,index) => CategoryItemmm()))
           ],
           ),
         ),
      ),
    );
  }
}