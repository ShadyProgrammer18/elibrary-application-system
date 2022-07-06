import 'package:flutter/material.dart';
import 'package:flutter_elibrary_project/screens/home_screen.dart';
import 'package:flutter_elibrary_project/screens/signup_screen.dart';
import 'package:flutter_elibrary_project/widgets/buttom_navbar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);
  

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children:[ 
                Container(
                        padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                        alignment: Alignment.topLeft,
                        child: const Image(
                         image: AssetImage(
                            'assets/images/login_image.png',
                         ),
                         height: 206,
                         width: 278.29,
                     ),
                      ),
    
                       SizedBox(height: 20),
                           Padding(
                             padding: const EdgeInsets.fromLTRB(20, 0, 40, 0),
                             child: Container(
                               height: 50,
                               padding: EdgeInsets.symmetric(horizontal: 15.0),
                               decoration: BoxDecoration(
                                 border: Border.all(
                                   color: Color(0xffECEDFA),
                                 ),
                                 borderRadius: BorderRadius.circular(20),
                                 ),
                                  child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding:   EdgeInsets.symmetric(vertical: 12.0),
                                        fillColor: Colors.white,
                                        filled: true,
                                        hintText: 'Email Address',
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                             ),
                           ),
    
                           SizedBox(height: 20),
                           Padding(
                             padding: const EdgeInsets.fromLTRB(20, 0, 40, 0),
                             child: Container(
                               height: 50,
                               padding: EdgeInsets.symmetric(horizontal: 15.0),
                               decoration: BoxDecoration(
                                 border: Border.all(
                                   color: Color(0xffECEDFA),
                                 ),
                                 borderRadius: BorderRadius.circular(20),
                                 ),
                                  child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding:   EdgeInsets.symmetric(vertical: 12.0),
                                        fillColor: Colors.white,
                                        filled: true,
                                        hintText: 'Password',
                                        suffixIcon: InkWell(
                                        onTap: _togglePasswordView,
                                        child: Icon(
                                          _isHidden
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                          ),
                                          ),
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      obscureText: _isHidden,
                                    ),
                             ),
                           ),
    
                            Padding(
                              padding: const EdgeInsets.fromLTRB(140, 10, 0, 0),
                              child: Text(
                                   "Forgot Password?",
                                   style: TextStyle(
                                     color: Color(0xff4D4D4D),
                                     fontSize: 13,
                                   ),
                                 ),
                            ),
                           
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 20, 40, 0),
                              child: Container(
                                  height: 50,
                                  width: 343,
                                child: FlatButton(
                                  color: Color(0xff314CB6),
                                  shape:  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                onPressed: ()=> Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => ButtomNavbar(),
                                 ),
                                ), 
                                child: Text(
                                  'Login',
                                   style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 19,
                                   fontWeight: FontWeight.bold,
                                      ),
                                  ),
                                  ),
                              ),
                            ),      
                             Padding(
                              padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
                              child: Row(
                                children: [
                                  Text(
                                       "Not Registered Yet?",
                                       style: TextStyle(
                                         color: Color(0xff4D4D4D),
                                         fontSize: 13,
                                       ),
                                     ),
                                  TextButton( onPressed: ()=> Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => SignupScreen(),
                                 ),
                                ),
                                child:  Text(
                                       "Create an account here",
                                       style: TextStyle(
                                         color: Color(0xffFF9900),
                                         fontSize: 13,
                                       ),
                                     ),
                                ),
                                ],
                              ),
                            ),
                          ]
                        ),
                        ),
                    )
                    );
              }
  void _togglePasswordView() {
    setState(() {
          _isHidden = !_isHidden;
        });
  }
}