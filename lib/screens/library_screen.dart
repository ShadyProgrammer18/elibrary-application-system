import 'package:flutter/material.dart';
import 'package:flutter_elibrary_project/model/categories.dart';

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
                      Text('Saved Books',
                      style: TextStyle(
                       color: Color(0xff4D4D4D),
                       fontSize: 18,
                     ), 
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                 SizedBox(
                      height: 230,
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: 2,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index)
                      {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            width: 180,
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
                    SizedBox(height: 20,),
                 SizedBox(
                      height: 230,
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: 2,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index)
                      {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            width: 180,
                            height: 240,
                              decoration: BoxDecoration(
                              border: Border.all(
                               color: Color(0xff4D4D4D),
                               ),
                               image: DecorationImage(
                                image: AssetImage(overview1[index].image),
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
            ],
          ),
        ),
      ),
    );
  }
}