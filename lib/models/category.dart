import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CategoryModel {

 final String name;
 final IconData icon;
  CategoryModel({required this.name, required this.icon});


  static List<CategoryModel> GetCategoriesWithAll (BuildContext context){
    return [
    CategoryModel(name:AppLocalizations.of(context)!.all, icon: Icons.all_inclusive),
    CategoryModel(name:AppLocalizations.of(context)!.sports, icon: Icons.sports),
    CategoryModel(name:AppLocalizations.of(context)!.birthday, icon: Icons.cake_sharp),
    CategoryModel(name:AppLocalizations.of(context)!.meeting, icon: Icons.laptop),
    CategoryModel(name:AppLocalizations.of(context)!.gaming, icon: Icons.gamepad_outlined),
    CategoryModel(name:AppLocalizations.of(context)!.eating, icon: Icons.local_pizza_outlined),
    CategoryModel(name:AppLocalizations.of(context)!.holiday, icon: Icons.holiday_village_outlined),
    CategoryModel(name:AppLocalizations.of(context)!.exhibition, icon: Icons.water_outlined),
    CategoryModel(name:AppLocalizations.of(context)!.workshop, icon: Icons.workspaces_outline),
    CategoryModel(name:AppLocalizations.of(context)!.book_club, icon: Icons.book_online),
    ];
  }
  static List<CategoryModel> GetCategoriesWithoutAll (BuildContext context){
   return [
     CategoryModel(name:AppLocalizations.of(context)!.sports, icon: Icons.sports),
     CategoryModel(name:AppLocalizations.of(context)!.birthday, icon: Icons.cake_sharp),
     CategoryModel(name:AppLocalizations.of(context)!.meeting, icon: Icons.laptop),
     CategoryModel(name:AppLocalizations.of(context)!.gaming, icon: Icons.gamepad_outlined),
     CategoryModel(name:AppLocalizations.of(context)!.eating, icon: Icons.local_pizza_outlined),
     CategoryModel(name:AppLocalizations.of(context)!.holiday, icon: Icons.holiday_village_outlined),
     CategoryModel(name:AppLocalizations.of(context)!.exhibition, icon: Icons.water_outlined),
     CategoryModel(name:AppLocalizations.of(context)!.workshop, icon: Icons.workspaces_outline),
     CategoryModel(name:AppLocalizations.of(context)!.book_club, icon: Icons.book_online),
   ];
 }


}