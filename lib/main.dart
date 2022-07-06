import 'package:flutter/material.dart';
import 'package:flutter_elibrary_project/screens/store_screen.dart';
import 'package:flutter_elibrary_project/screens/home_screen.dart';
import 'package:flutter_elibrary_project/screens/landing_page.dart';
import 'package:flutter_elibrary_project/screens/login_signup_screen.dart';
import 'package:flutter_elibrary_project/widgets/buttom_navbar.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
      primaryColor:  Colors.white,
        backgroundColor: Colors.white,
      ),
      home: ButtomNavbar(),
    );
  }
}

