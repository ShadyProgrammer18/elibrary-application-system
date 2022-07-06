import 'package:flutter/material.dart';
import 'package:flutter_elibrary_project/screens/login_screen.dart';
import 'package:flutter_elibrary_project/screens/login_signup_screen.dart';
import 'package:flutter_elibrary_project/screens/signup_screen.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Padding(
            padding:  EdgeInsets.fromLTRB(20, 0, 20, 30),
             child: Image(
               image:AssetImage(
               'assets/images/login_image.png',
             ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.fromLTRB(0, 0, 290, 10),
             child: Text(
                      'Hello,',
                       style: TextStyle(
                       color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      ),
                  ),
           ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                   child: Center(
                     child: Text(
                        'Download and read free ebooks from your library using your phone or tablet',
                         style: TextStyle(
                         color: Color(0xff4D4D4D),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        ),
                ),
                   ),
                 ),
                 
            Padding(
               padding: const EdgeInsets.fromLTRB(20, 50, 40, 0),
                 child: Container(
                  height: 50,
                  width: 345,
                  child: FlatButton(
                    color: Color(0xffFF9900),
                     onPressed: ()=> Navigator.pushReplacement(
                     context,
                     MaterialPageRoute(
                      builder: (_) => LoginSignupScreen(),
                      ),
                    ), 
                   child: Text(
                    'Get Started',
                     style: TextStyle(
                     color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    ),
                ),
                ),
              ),
            ), 
          ],
        ),
        );
  }
}