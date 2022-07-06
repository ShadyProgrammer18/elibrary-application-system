import 'package:flutter/material.dart';
import 'package:flutter_elibrary_project/widgets/buttom_navbar.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({ Key? key }) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
   bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children:[ 
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(right: 220),
                  child: Text('Register Here,',
               style: TextStyle(
                   color: Color(0xff4D4D4D),
                   fontSize: 24,
                   fontWeight: FontWeight.bold,
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
                                        hintText: 'First Name',
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
                                        hintText: 'Last Name',
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
                                        hintText: 'Matric Number',
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
                                        hintText: 'Confirm Password',
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
                              padding: const EdgeInsets.fromLTRB(20, 90, 40, 0),
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
                                  'Register',
                                   style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 19,
                                   fontWeight: FontWeight.bold,
                                      ),
                                  ),),
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