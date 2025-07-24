import 'package:evently/core/resourses/colors_manager.dart';
import 'package:evently/core/routes/routes_manager.dart';
import 'package:evently/features/main_layout/tabs/fav/fav_screen.dart';
import 'package:evently/features/main_layout/tabs/home_screen/home_screen.dart';
import 'package:evently/features/main_layout/tabs/map/map_screen.dart';
import 'package:evently/features/main_layout/tabs/profile/profile.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});
  @override
  State<MainLayout> createState() => _MainLayoutState();
}
class _MainLayoutState extends State<MainLayout> {
  final List<Widget> tabs = [
    const HomeScreen(),
    const MapScreen(),
    const FavScreen(),
    const Profile(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[selectedIndex],
      bottomNavigationBar:
       BottomAppBar( 
        shape: CircularNotchedRectangle(), 
        clipBehavior: Clip.hardEdge,
        notchMargin: 4.0,
         child: BottomNavigationBar(  
          currentIndex: selectedIndex,
          onTap: _ontap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(selectedIndex == 0 ? Icons.home_filled : Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(selectedIndex == 1 
                ? Icons.location_on 
                : Icons.location_on_outlined),
              label: 'Map',
            ),
            BottomNavigationBarItem(
              icon: Icon(selectedIndex == 2 
                ? Icons.favorite 
                : Icons.favorite_border_outlined),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(selectedIndex == 3
                ? Icons.person 
                : Icons.person_outline),
              label: 'Profile',
            ),
          ],
               ),
       ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: ColorsManager.white,
        onPressed: () { 
          Navigator.pushNamed(context, RoutesManager.createEvent);
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _ontap(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }
}