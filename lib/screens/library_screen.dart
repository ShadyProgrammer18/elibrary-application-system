import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({ Key? key }) : super(key: key);

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Library',
                      style: TextStyle(
                       color: Color(0xff4D4D4D),
                       fontSize: 24,
                       fontWeight: FontWeight.bold,
                     ), 
                      ),
                      SizedBox(height: 10),
                      Text('Collection of Books',
                      style: TextStyle(
                       color: Color(0xff4D4D4D),
                       fontSize: 18,
                     ), 
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                     height: 2000,
                      child: GridView(
                        scrollDirection: Axis.vertical,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                           width: 170,
                            height: 240,
                        decoration: BoxDecoration(
                        border: Border.all(
                        color: Color(0xff4D4D4D),
                      )
                      ),
                   ),
                          ),
                   Padding(
                     padding: const EdgeInsets.all(5.0),
                     child: Container(
                        height: 100,
                           width: 170,
                          decoration: BoxDecoration(
                          border: Border.all(
                          color: Color(0xff4D4D4D),
                        )
                        ),
                     ),
                   ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 240,
                           width: 170,
                          decoration: BoxDecoration(
                          border: Border.all(
                          color: Color(0xff4D4D4D),
                        )
                        ),
                   ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 100,
                           width: 170,
                          decoration: BoxDecoration(
                          border: Border.all(
                          color: Color(0xff4D4D4D),
                        )
                        ),
                   ),
                    ),
                   Padding(
                     padding: const EdgeInsets.all(5.0),
                     child: Container(
                        height: 240,
                           width: 170,
                          decoration: BoxDecoration(
                          border: Border.all(
                          color: Color(0xff4D4D4D),
                        )
                        ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(5.0),
                     child: Container(
                        height:100,
                           width: 170,
                          decoration: BoxDecoration(
                          border: Border.all(
                          color: Color(0xff4D4D4D),
                        )
                        ),
                     ),
                   ),
                  ],
                   ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}