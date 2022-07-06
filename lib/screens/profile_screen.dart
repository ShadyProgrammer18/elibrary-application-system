import 'package:flutter/material.dart';
import 'package:flutter_elibrary_project/screens/home_screen.dart';
import 'package:flutter_elibrary_project/screens/login_signup_screen.dart';
import 'package:flutter_elibrary_project/screens/my_profile_screen.dart';
import 'package:flutter_elibrary_project/screens/notification_screen.dart';
import 'package:flutter_elibrary_project/screens/settings_screen.dart';
import 'package:flutter_elibrary_project/widgets/buttom_navbar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 10),
                   child: Text('Profile',
                        style: TextStyle(
                         color: Color(0xff4D4D4D),
                         fontSize: 24,
                         fontWeight: FontWeight.bold,
                       ), 
                        ),
                 ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(70.0),
                        child: Image(
                        height: 150,
                        width: 150,
                        image: AssetImage(
                         'assets/images/profile_images.png',
                         ),
                        fit: BoxFit.cover,
                          ),
                      ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(top: 20, bottom: 10),
                   child: Text(
                     'Offodile Dozie',
                     style: TextStyle(
                    color: Color(0xff3E3E3E),
                   fontSize: 18,
                   fontWeight: FontWeight.bold,
                ),
               ),
                 ),
              Text(
                'Offodiledozie@gmail.com',
                style: TextStyle(
                 color: Color(0xff3E3E3E),
                fontSize: 12,
                fontWeight: FontWeight.w400,
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
                                   Icon(Icons.person_outline, size: 30.0), 
                                   Container(
                                     padding: EdgeInsets.symmetric(horizontal: 10),
                                     child: Text(
                                       'My Profile',
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
                                  return MyProfileScreen();
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
                                   Icon(Icons.settings, size: 30.0), 
                                   Container(
                                     padding: EdgeInsets.symmetric(horizontal: 10),
                                     child: Text(
                                       'Settings',
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
                                  return SettingsScreen();
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
                 SizedBox(height: 20),
                GestureDetector(
                   onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginSignupScreen(),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 90),
                    child: Container(
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
                               child: Container(
                                 padding: EdgeInsets.symmetric(horizontal: 10),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       children: [
                                         Icon(Icons.logout, size: 30.0, color: Colors.red), 
                                         Container(
                                           padding: EdgeInsets.symmetric(horizontal: 10),
                                           child: Text(
                                             'Logout',
                                             style: TextStyle(
                                               fontSize: 14,
                                               fontWeight: FontWeight.w600,
                                               color: Colors.black,
                                             ),
                                           ),
                                         ),
                                       ],
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),      
              ],
            )
          )
          ),
    );
  }
}

