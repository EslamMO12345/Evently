import 'package:evently/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatelessWidget {
   CategoryItem({super.key,required this.categoryModel,required this.SelectedbackGroundColor,
     required this.SelectedForGroundColor,
     required this.UnSelectedForGroundColor,
     required this.UnSelectedbackGroundColor,
     required this.IsSelected,
    });
  CategoryModel categoryModel;
 final Color SelectedbackGroundColor;
 final Color SelectedForGroundColor;
 final Color UnSelectedbackGroundColor;
 final Color UnSelectedForGroundColor;
final bool IsSelected;
  @override
  Widget build(BuildContext context) {
    return Container(  
      padding: REdgeInsets.symmetric(vertical: 10, horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45.r), 
        border: Border.all(color: SelectedbackGroundColor),
        color: IsSelected? SelectedbackGroundColor : UnSelectedbackGroundColor,
      ),
      child: Row( 
        children: [ 
          Icon(categoryModel.icon, color: IsSelected? SelectedForGroundColor : UnSelectedForGroundColor,), 
          SizedBox(width: 8.w,), 
          Text(categoryModel.name,style: GoogleFonts.inter(color: IsSelected? SelectedForGroundColor : UnSelectedForGroundColor, fontSize: 16.sp, fontWeight: FontWeight.w500),),
        ],
      ),
    );
  }
}