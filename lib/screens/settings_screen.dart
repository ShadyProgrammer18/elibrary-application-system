import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_elibrary_project/screens/notification_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                       child: Container(
                        alignment: Alignment.topCenter,
                        child: Text(
                         'Settings',
                         style: TextStyle(
                           fontSize: 18,
                           fontWeight: FontWeight.bold,
                           color: Colors.black,
                         ),
                       ),
                       ),
                     ),
                   ],
                 ),
               
               SizedBox(height: 20,),
                  Container(
                  child: Column(
                    children: [
                      Container( 
                        height: 58,
                        width: 328,
                        decoration: BoxDecoration(
                         color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                           BoxShadow(
                           color: Colors.black12,
                           offset: Offset(0, 1),
                            blurRadius: 4.0,
                               ),
                            ],
                         ),
                         child: Container(
                           padding: EdgeInsets.symmetric(horizontal: 10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Icon(Icons.lock_outline, size: 30.0), 
                                   Container(
                                     padding: EdgeInsets.symmetric(horizontal: 10),
                                     child: Text(
                                       'Privacy & Security ',
                                       style: TextStyle(
                                         fontSize: 14,
                                         fontWeight: FontWeight.w600,
                                         color: Colors.black,
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                                Container(
                                 padding: EdgeInsets.only(right: 10),
                                 child: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios),
                                 color:  Color(0xffFF9900),
                                  iconSize: 20,
                                onPressed: () {
                                   Navigator.push(context,
                                MaterialPageRoute(builder: (context){
                                  return NotificationScreen();
                                }));
                                },
                                ),
                              ),
                             ],
                           ),
                         ),
                      ),
                      
                    ],
                  ),
                ),    
                  SizedBox(height: 20,),
                  Container(
                  child: Column(
                    children: [
                      Container( 
                        height: 58,
                        width: 328,
                        decoration: BoxDecoration(
                         color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                           BoxShadow(
                           color: Colors.black12,
                           offset: Offset(0, 1),
                            blurRadius: 4.0,
                               ),
                            ],
                         ),
                         child: Container(
                           padding: EdgeInsets.symmetric(horizontal: 10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Icon(Icons.notifications_outlined, size: 30.0), 
                                   Container(
                                     padding: EdgeInsets.symmetric(horizontal: 10),
                                     child: Text(
                                       'Notification',
                                       style: TextStyle(
                                         fontSize: 14,
                                         fontWeight: FontWeight.w600,
                                         color: Colors.black,
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                                Container(
                                 padding: EdgeInsets.only(right: 10),
                                 child: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios),
                                 color:  Color(0xffFF9900),
                                  iconSize: 20,
                                onPressed: () {
                                   Navigator.push(context,
                                MaterialPageRoute(builder: (context){
                                  return NotificationScreen();
                                }));
                                },
                                ),
                              ),
                             ],
                           ),
                         ),
                      ),
                      
                    ],
                  ),
                ), 
                  SizedBox(height: 20,),
                  Container(
                  child: Column(
                    children: [
                      Container( 
                        height: 58,
                        width: 328,
                        decoration: BoxDecoration(
                         color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                           BoxShadow(
                           color: Colors.black12,
                           offset: Offset(0, 1),
                            blurRadius: 4.0,
                               ),
                            ],
                         ),
                         child: Container(
                           padding: EdgeInsets.symmetric(horizontal: 10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Icon(Icons.headphones_outlined, size: 30.0), 
                                   Container(
                                     padding: EdgeInsets.symmetric(horizontal: 10),
                                     child: Text(
                                       'Help and Support',
                                       style: TextStyle(
                                         fontSize: 14,
                                         fontWeight: FontWeight.w600,
                                         color: Colors.black,
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                                Container(
                                 padding: EdgeInsets.only(right: 10),
                                 child: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios),
                                 color:  Color(0xffFF9900),
                                  iconSize: 20,
                                onPressed: () {
                                   Navigator.push(context,
                                MaterialPageRoute(builder: (context){
                                  return NotificationScreen();
                                }));
                                },
                                ),
                              ),
                             ],
                           ),
                         ),
                      ),
                      
                    ],
                  ),
                ),
                  SizedBox(height: 20,),
                  Container(
                  child: Column(
                    children: [
                      Container( 
                        height: 58,
                        width: 328,
                        decoration: BoxDecoration(
                         color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                           BoxShadow(
                           color: Colors.black12,
                           offset: Offset(0, 1),
                            blurRadius: 4.0,
                               ),
                            ],
                         ),
                         child: Container(
                           padding: EdgeInsets.symmetric(horizontal: 10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Icon(Icons.question_mark_outlined,size: 30.0), 
                                   Container(
                                     padding: EdgeInsets.symmetric(horizontal: 10),
                                     child: Text(
                                       'About',
                                       style: TextStyle(
                                         fontSize: 14,
                                         fontWeight: FontWeight.w600,
                                         color: Colors.black,
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                                Container(
                                 padding: EdgeInsets.only(right: 10),
                                 child: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios),
                                 color:  Color(0xffFF9900),
                                  iconSize: 20,
                                onPressed: () {
                                   Navigator.push(context,
                                MaterialPageRoute(builder: (context){
                                  return NotificationScreen();
                                }));
                                },
                                ),
                              ),
                             ],
                           ),
                         ),
                      ),
                      
                    ],
                  ),
                ),       
            ]
          ),
        ),
      ),
    );
  }
}