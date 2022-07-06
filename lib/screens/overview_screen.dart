import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_elibrary_project/screens/see_all_screen.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
    body: SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 209, 10),
              child: Text('Weekly Pick',
                          style: TextStyle(
                           color: Color(0xff4D4D4D),
                           fontSize: 24,
                           fontWeight: FontWeight.w500,
                         ), 
                          ),
            ),
             SizedBox(
                      height: 200,
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index)
                      {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            width: 150,
                            height: 240,
                              decoration: BoxDecoration(
                              border: Border.all(
                               color: Color(0xff4D4D4D),
                               ),
                               ),
                          ),
                        );
                      }, 
                      separatorBuilder: (context, index)
                      {
                        return SizedBox(
                          width: 10,
                        );
                      },
                       
                       ),
                    ),  
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Trending',
                                style: TextStyle(
                                color: Color(0xff4D4D4D),
                                fontSize: 16
                                ),
                              ),
                                   Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: TextButton( onPressed: ()=> Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => SeeAllScreen(),
                                     ),
                                    ),
                                    child:  Text(
                                           "See All",
                                           style: TextStyle(
                                             color: Color(0xff314CB6),
                                             fontSize: 16,
                                           ),
                                         ),
                                    ),
                                  ),
                                
                            ],
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 323,
                          color: Colors.white,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  color: Color(0xffEFBDEB),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20 , left: 10),
                                    child: Text('Book Name',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    )
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20, left: 10 ),
                                    child: Text('Book author',
                                    style: TextStyle(
                                      color: Color(0xff4D4D4D),
                                    )
                                    ),
                                  ),

                                ],
                              )
                            ],
                          )
                        ),
                        SizedBox(height: 10,),
                         Container(
                          height: 80,
                          width: 323,
                          color: Colors.white,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  color: Color(0xffEFBDEB),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20 , left: 10),
                                    child: Text('Book Name',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    )
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20, left: 10 ),
                                    child: Text('Book author',
                                    style: TextStyle(
                                      color: Color(0xff4D4D4D),
                                    )
                                    ),
                                  ),

                                ],
                              )
                            ],
                          )
                        ),
                        SizedBox(height: 10,),
                         Container(
                          height: 80,
                          width: 323,
                          color: Colors.white,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  color: Color(0xffEFBDEB),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20 , left: 10),
                                    child: Text('Book Name',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    )
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20, left: 10 ),
                                    child: Text('Book author',
                                    style: TextStyle(
                                      color: Color(0xff4D4D4D),
                                    )
                                    ),
                                  ),

                                ],
                              )
                            ],
                          )
                        ),
                      ],
                    ),  
          ],
        )
      ),
    )
    );
  }
}