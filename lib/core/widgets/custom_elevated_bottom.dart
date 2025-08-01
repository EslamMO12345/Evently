import 'package:flutter/material.dart';

class CustomElevatedBottom extends StatelessWidget {
   const CustomElevatedBottom({super.key, required this.title });
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton( 
       onPressed: (){},
    
     child:Text(title));
  }
}