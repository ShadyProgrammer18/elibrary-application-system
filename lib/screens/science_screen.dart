import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_elibrary_project/model/categories.dart';

class ScienceScreen extends StatefulWidget {
  const ScienceScreen({Key? key}) : super(key: key);

  @override
  State<ScienceScreen> createState() => _ScienceScreenState();
}

class _ScienceScreenState extends State<ScienceScreen> {
  @override
  Widget build(BuildContext context) {
   return Scaffold (
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Container(
                         height: 50,
                         padding: EdgeInsets.symmetric(horizontal: 15.0),
                          decoration: BoxDecoration(
                          border: Border.all(
                          color: Color(0xff4D4D4D),
                          ),
                          borderRadius: BorderRadius.circular(20),
                          ),
                        child: TextField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffFFFFFF),
                            prefixIcon: Icon(Icons.search, 
                            color: Colors.grey,
                            ),
                            contentPadding: EdgeInsets.all(12.0),
                            hintText: "Search Books",
                            hintStyle: TextStyle(
                             color: Colors.grey,
                            ),
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                   Padding(
                     padding: const EdgeInsets.only(top: 20),
                     child: SizedBox(
                        height: 250,
                        child: ListView.separated(
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index)
                        {
                          return Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              width: 170,
                              height: 240,
                                decoration: BoxDecoration(
                                border: Border.all(
                                 color: Color(0xff4D4D4D),
                                 ),
                                 image: DecorationImage(
                                image: AssetImage(science1[index].image),
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
                   ),
                    Padding(
                     padding: const EdgeInsets.only(top: 20),
                     child: SizedBox(
                        height: 250,
                        child: ListView.separated(
                          shrinkWrap: true,
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index)
                        {
                          return Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              width: 170,
                              height: 240,
                                decoration: BoxDecoration(
                                border: Border.all(
                                 color: Color(0xff4D4D4D),
                                 ),
                                 image: DecorationImage(
                                image: AssetImage(science2[index].image),
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
                   ),        
            ],
          ),
        ),
      ),
    );
  }
}