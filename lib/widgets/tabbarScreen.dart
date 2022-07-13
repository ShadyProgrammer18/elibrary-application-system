

import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({ Key? key }) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Hello, \n Kindly Enter your details to continue'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Login'),
              Tab(text: 'Signup'),
            ]
             ),
            ),
            body: Column(
                        children: [
                          Padding(padding: EdgeInsets.all(5),
                          child: TabBar(
                            labelColor: Color(0xff4D4D4D),
                            indicatorColor: Colors.white,
                            indicatorWeight: 2,
                            indicator: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 1,
                                offset: Offset(0, 1),
                              )
                            ]
                          ),
                            tabs: [
                            Tab(text: 'Login'),
                              Tab(text: 'Signup'),
                          ]
                          ),
                          ),
                          TabBarView(
                            children: [
                            Center(child: Text('Dozie'),),
                             Center(child: Text('Dozie'),),
                          ]
                          
                          ),
                        ],
                      ),
      ),
    );
  }
}