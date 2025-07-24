import 'package:flutter/material.dart';

class CategoryModel {
 final String name;
 final IconData icon;
  CategoryModel({required this.name, required this.icon});
  static  List <CategoryModel> categoriesWithAll = [
    CategoryModel(name:'All', icon: Icons.all_inclusive),
    CategoryModel(name:'Sports', icon: Icons.sports),
    CategoryModel(name:'Birthday', icon: Icons.cake_sharp),
    CategoryModel(name:'Meeting', icon: Icons.laptop),
    CategoryModel(name:'Gaming', icon: Icons.gamepad_outlined),
    CategoryModel(name:'Eating', icon: Icons.local_pizza_outlined),
    CategoryModel(name:'Holiday', icon: Icons.holiday_village_outlined),
    CategoryModel(name:'Exhibition', icon: Icons.water_outlined),
    CategoryModel(name:'WorkShop', icon: Icons.workspaces_outline),
    CategoryModel(name:'BookClub', icon: Icons.book_online),
  ]; 

  static  List <CategoryModel> categories = [
    CategoryModel(name:'Sports', icon: Icons.sports),
    CategoryModel(name:'Birthday', icon: Icons.cake_sharp),
    CategoryModel(name:'Meeting', icon: Icons.laptop),
    CategoryModel(name:'Gaming', icon: Icons.gamepad_outlined),
    CategoryModel(name:'Eating', icon: Icons.local_pizza_outlined),
    CategoryModel(name:'Holiday', icon: Icons.holiday_village_outlined),
    CategoryModel(name:'Exhibition', icon: Icons.water_outlined),
    CategoryModel(name:'WorkShop', icon: Icons.workspaces_outline),
    CategoryModel(name:'BookClub', icon: Icons.book_online),
  ]; 
}