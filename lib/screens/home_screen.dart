import 'package:flutter/material.dart';
import 'package:flutter_elibrary_project/model/categories.dart';
import 'package:flutter_elibrary_project/screens/see_all_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);
  
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: SafeArea(child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hello,',
                      style: TextStyle(
                       color: Color(0xff4D4D4D),
                       fontSize: 24,
                       fontWeight: FontWeight.bold,
                     ), 
                      ),
                      SizedBox(height: 10),
                      Text('Offodile Dozie 2017/5713',
                      style: TextStyle(
                       color: Color(0xff4D4D4D),
                       fontSize: 18,
                     ), 
                      ),
                      
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 70, top: 20),
                    child: IconButton(icon:  Icon(Icons.notifications_none,
                     size: 35,
                    color: Color(0xff4D4D4D),
                    ),
                    onPressed: () {},
                    )
                  ),
                ),
              ],
            ),
            Padding(
                    padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Knowledge Right at your fingertips!',
                        style: TextStyle(
                         color: Color(0xff4D4D4D),
                         fontSize: 24,
                         fontWeight: FontWeight.w500,
                       ), 
                        ),
                        
                      ],
                    ),
                  ),
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
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                         Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 10, left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Continue Reading',
                            style: TextStyle(
                            color: Color(0xff4D4D4D),
                            fontSize: 16, 
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
                                       "See all",
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
                       SizedBox(
                      height: 250,
                      child: ListView.separated(
                        itemCount: 4,
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Padding(
                       padding: const EdgeInsets.only(top: 20, bottom: 10, left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recommended for you',
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
                                         "See all",
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
                      
                       SizedBox(
                      height: 250,
                      child: ListView.separated(
                        itemCount: 4,
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
                  
          ],
        )
        ),
      ),
    );
  }
}