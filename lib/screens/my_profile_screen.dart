import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_elibrary_project/screens/profile_screen.dart';
import 'package:flutter_elibrary_project/widgets/buttom_navbar.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
         Container(
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                children: <Widget>[
                 Row(
                   children: <Widget>[
                     Padding(
                       padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                       child: IconButton(
                         icon: Icon(Icons.arrow_back_ios),
                         color: Color(0xff343A3F), 
                         iconSize: 20,
                       onPressed: () => Navigator.pop(context),
                       ),
                     ),
                      Padding(
                         padding: EdgeInsets.only(top: 50, left: 10),
                       child: Column(
                         children: <Widget>[
                           Container(
                            alignment: Alignment.topCenter,
                            child: Text(
                             'My Profile',
                             style: TextStyle(
                               fontSize: 18,
                               fontWeight: FontWeight.bold,
                               color: Colors.black,
                             ),
                           ),
                           ),
                           SizedBox(height: 5),
                            Container(
                              child: Text(
                               'Update your profile details',
                               style: TextStyle(
                                 fontSize: 14,
                                 fontWeight: FontWeight.w300,
                                 color: Colors.black,
                               ),
                           ),
                            ),
                         ],
                       ),
                     ),
                   ],
                 ),
                 Padding(
                     padding:  EdgeInsets.symmetric(vertical: 15),
                     child: Container(
                      height: 101,
                       width: 100,
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                         border: Border.all(
                         width: 1.0,
                          color: Colors.white,
                          ),
                        ),
                       child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image(
                         height: 101,
                         width: 100,
                         image: AssetImage(
                          'assets/images/profile_images.png',
                           ),
                          fit: BoxFit.cover,
                          ),
                        ),
                       ),
                     ),
                   Padding(
                     padding:  EdgeInsets.only(top: 5, right: 245, bottom: 10),
                     child: Container(
                       child: Text(
                         'Full Name',
                         style: TextStyle(
                           fontSize: 14,
                           fontWeight: FontWeight.w600,
                           color: Colors.black,
                         ),
                       ),
                     ),
                   ),
                    SizedBox(height: 10),
                           Padding(
                             padding: const EdgeInsets.fromLTRB(20, 0, 40, 0),
                             child: Container(
                               height: 50,
                               padding: EdgeInsets.symmetric(horizontal: 15.0),
                               decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                              color: Colors.white24,
                                borderRadius: BorderRadius.circular(10),
                              ),
                                  child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding:   EdgeInsets.symmetric(vertical: 15.0),
                                        fillColor: Colors.white,
                                        filled: true,
                                      ),
                                    ),
                             ),
                           ),
    
                        Padding(
                   padding:  EdgeInsets.only(top: 10, right: 245, left: 20, bottom: 10),
                     child: Container(
                       child: Text(
                         'Email Address',
                         style: TextStyle(
                           fontSize: 14,
                           fontWeight: FontWeight.w600,
                           color: Colors.black,
                         ),
                       ),
                     ),
                   ),
                    SizedBox(height: 10),
                           Padding(
                             padding: const EdgeInsets.fromLTRB(20, 0, 40, 0),
                             child: Container(
                               height: 50,
                               padding: EdgeInsets.symmetric(horizontal: 15.0),
                               decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                              color: Colors.white24,
                                borderRadius: BorderRadius.circular(10),
                              ),
                                  child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding:   EdgeInsets.symmetric(vertical: 15.0),
                                        fillColor: Colors.white,
                                        filled: true,
                                      ),
                                    ),
                             ),
                           ),
                        Padding(
                   padding:  EdgeInsets.only(top: 10, right: 245, left: 20, bottom: 10),
                     child: Container(
                       child: Text(
                         'Matric Number',
                         style: TextStyle(
                           fontSize: 14,
                           fontWeight: FontWeight.w600,
                           color: Colors.black,
                         ),
                       ),
                     ),
                   ),
                     SizedBox(height: 10),
                           Padding(
                             padding: const EdgeInsets.fromLTRB(20, 0, 40, 0),
                             child: Container(
                               height: 50,
                               padding: EdgeInsets.symmetric(horizontal: 15.0),
                               decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                              color: Colors.white24,
                                borderRadius: BorderRadius.circular(10),
                              ),
                                  child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding:   EdgeInsets.symmetric(vertical: 15.0),
                                        fillColor: Colors.white,
                                        filled: true,
                                      ),
                                    ),
                             ),
                           ),
                       
                       GestureDetector(
                         child: Padding(
                           padding:  EdgeInsets.only(top: 50),
                           child: Container(
                            height: 40,
                            alignment: Alignment.center,
                           padding: EdgeInsets.symmetric(horizontal: 15.0),
                           margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                           decoration: BoxDecoration(
                               color: Color(0xff314CB6),
                              borderRadius: BorderRadius.circular(5),
                           ),
                           child: Text(
                             'Update',
                              style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.w600,
                             ),
                           ),
                        ),
                         ),
                          onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ButtomNavbar(),
                       ),
                      ), 
                       ),
              ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}