import 'package:evently/features/main_layout/tabs/home_screen/category_item.dart';
import 'package:evently/models/category.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
   CustomTabBar({super.key, 
   required this.category,
   required this.selectedForGroundColor,
   required this.selectedbackGroundColor,
   required this.unSelectedForGroundColor,
   required this.unSelectedbackGroundColor,
   bool isSelected = true
  });
    List <CategoryModel> category;
 final Color selectedbackGroundColor;
 final Color selectedForGroundColor;
 final Color unSelectedbackGroundColor;
 final Color unSelectedForGroundColor;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}
int isSelect = 0;
class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
                length: widget.category.length,
                child: TabBar(
                  indicatorColor: Colors.transparent,
                  tabAlignment:TabAlignment.start ,
                  onTap: (value) {
                    isSelect = value;
                    setState(() {
                      
                    });
                  },
                  isScrollable: true,
                  tabs:widget.category.map((CategoryModel) => CategoryItem(categoryModel: CategoryModel, 
                  SelectedbackGroundColor:widget.selectedbackGroundColor, 
                  SelectedForGroundColor:widget.selectedForGroundColor, 
                  UnSelectedForGroundColor:widget.unSelectedForGroundColor, 
                  UnSelectedbackGroundColor:widget.unSelectedbackGroundColor, 
                  IsSelected:isSelect==widget.category.indexOf(CategoryModel),
                  )).toList()
                  ),
                  );
  }
}