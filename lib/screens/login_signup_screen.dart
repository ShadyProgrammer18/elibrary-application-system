// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_elibrary_project/screens/login_screen.dart';
import 'package:flutter_elibrary_project/screens/signup_screen.dart';

// ignore: use_key_in_widget_constructors
class LoginSignupScreen extends StatefulWidget {

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> with SingleTickerProviderStateMixin{
  @override
  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child:SingleChildScrollView(
            // ignore: prefer_const_constructors
            physics: AlwaysScrollableScrollPhysics(),
            child:  Padding(
              padding:  const EdgeInsets.fromLTRB(15, 10, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                // ignore: prefer_const_constructors
                Text('Hello,',
               // ignore: prefer_const_constructors
               style: TextStyle(
                 // ignore: prefer_const_constructors
                 color: Color(0xff4D4D4D),
                 fontSize: 24,
                 fontWeight: FontWeight.bold,
               ), 
                ),
                // ignore: prefer_const_constructors
                   SizedBox(height: 10),
                 const Text('Kindly Enter your details to continue',
               // ignore: prefer_const_constructors
               style: TextStyle(
                 // ignore: prefer_const_constructors
                 color: Color(0xff4D4D4D),
                 fontSize: 17,
               ), 
                ),  
                SizedBox(
                  height: 100,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, right: 10),
                        child: Center(
                          child: Container(
                            //height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Color(0xffEAEFEF),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(5),
                                child: TabBar(
                                  labelColor: Color(0xff4D4D4D),
                                  indicatorColor: Colors.white,
                                  indicatorWeight: 2,
                                  indicator: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 1,
                                      offset: Offset(0, 1),
                                    )
                                  ]
                                ),
                                  tabs: [
                                  Tab(text: 'Login'),
                                    Tab(text: 'Signup'),
                                ]
                                ),
                                ),
                            
                              ],
                            ),
                          ),
                        ),
                        
                      )
                    ],
                  ),
                ),
                         Container(
                               height: 1000,
                               child: TabBarView(
                                 children: [
                                 LoginScreen(),
                                 SignupScreen(),
                               ]
                               ),
                             )         
              ],
              ),
            ),
            ),
         ),
      ),
    );
  }
}