import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_elibrary_project/model/categories.dart';
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
    body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
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
                               image: DecorationImage(
                                image: AssetImage(overview[index].image),
                                fit: BoxFit.fill
                               )
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
                                  decoration: BoxDecoration(
                                border: Border.all(
                                 color: Color(0xff4D4D4D),
                                 ),
                                 image: DecorationImage(
                                image: AssetImage("assets/images/physics in biology and medicine.jpg"),
                                fit: BoxFit.fill
                               )
                                 ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20 , left: 10),
                                    child: Text('Physics in biology and medicine',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    )
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20, right: 95 ),
                                    child: Text('Paul Davidovits',
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
                                   decoration: BoxDecoration(
                                border: Border.all(
                                 color: Color(0xff4D4D4D),
                                 ),
                                 image: DecorationImage(
                                image: AssetImage("assets/images/Mechanics of Composite Materials.jpg"),
                                fit: BoxFit.fill,
                               )
                                 ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20 , left: 10),
                                    child: Text('Mechanics of Composite Materials',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    )
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20, right: 95 ),
                                    child: Text('Robert M. Jones',
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
                                   decoration: BoxDecoration(
                                border: Border.all(
                                 color: Color(0xff4D4D4D),
                                 ),
                                 image: DecorationImage(
                                image: AssetImage("assets/images/Modern Analytic Chemistry.jpg"),
                                fit: BoxFit.fill
                               )
                                 ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20 , left: 10),
                                    child: Text('Modern Analytic Chemistry',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    )
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20, right: 95 ),
                                    child: Text('David T Harvey',
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
        ),
      )
    )
    );
  }
}