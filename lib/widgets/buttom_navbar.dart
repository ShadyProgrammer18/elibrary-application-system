import 'package:flutter/material.dart';
import 'package:flutter_elibrary_project/screens/store_screen.dart';
import 'package:flutter_elibrary_project/screens/home_screen.dart';
import 'package:flutter_elibrary_project/screens/library_screen.dart';
import 'package:flutter_elibrary_project/screens/profile_screen.dart';

class ButtomNavbar extends StatefulWidget {
  const ButtomNavbar({ Key? key }) : super(key: key);

  @override
  State<ButtomNavbar> createState() => _ButtomNavbarState();
}

class _ButtomNavbarState extends State<ButtomNavbar> {
  int selectedIndex = 0;
  
 final screens = [
   HomeScreen(),
   StoreScreen(),
   LibraryScreen(),
   ProfileScreen(),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: Row(
        children: <Widget>[
          buildNavBarItem(Icons.home_outlined,0),
          buildNavBarItem(Icons.explore_outlined,1),
          buildNavBarItem(Icons.my_library_books_outlined,2),
          buildNavBarItem(Icons.person_outlined,3),
        ],
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index,) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        }
        );
      },
      child: Container(
            height: 70,
            width: MediaQuery.of(context).size.width/4,
            decoration:  BoxDecoration(
              color: Colors.white,
              //color: index == selectedIndex ? Color(0xffFF9900): Color(0xffFFFFFF),
            ),
            child: Icon(
              icon,  
              color: index == selectedIndex ? Color(0xffFF9900): Colors.grey,
              size: 30,
            ),
          ),
    );
  }
}