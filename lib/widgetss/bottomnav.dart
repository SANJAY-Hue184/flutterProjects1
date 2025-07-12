import 'package:flutter/material.dart';
import 'package:projects/widgetss/Snack.dart';
import 'package:projects/widgetss/detector.dart';
import 'package:projects/widgetss/drawer.dart';
import 'package:projects/widgetss/dropdowm.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedindex =0;
  PageController pageController = PageController();
  // List<Widget>widgets =[
  //   Text('home'),
  //   Text('Search'),
  //   Text('Add'),
  //   Text('Profile'),
  // ];

  void onTapped(int index){
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

 body:PageView(
   controller: pageController,
   children: [
DrawerWidget(),
     DropDownWidget(),
     SnackWidget(),
     Detector(),
   ],
 ),
 // body:Center(child:widgets.elementAt(selectedindex)),
 bottomNavigationBar:BottomNavigationBar(items: const<BottomNavigationBarItem>[
   BottomNavigationBarItem(icon: Icon(Icons.home) , label:'HOME'),
   BottomNavigationBarItem(icon: Icon(Icons.search) , label:'Search'),
   BottomNavigationBarItem(icon: Icon(Icons.add) , label:'ADD'),
   BottomNavigationBarItem(icon: Icon(Icons.person) , label:'Profile'),

 ],
 currentIndex:selectedindex,
     selectedItemColor: Colors.green,
   unselectedItemColor: Colors.grey,
onTap : onTapped,
 ),
    );

  }
}
