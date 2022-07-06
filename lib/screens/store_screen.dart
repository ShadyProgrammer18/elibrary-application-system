import 'package:flutter/material.dart';
import 'package:flutter_elibrary_project/screens/business_and_accounting_screen.dart';
import 'package:flutter_elibrary_project/screens/engineering_screen.dart';
import 'package:flutter_elibrary_project/screens/overview_screen.dart';
import 'package:flutter_elibrary_project/screens/science_screen.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({ Key? key }) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller =
    TabController(length: 4, vsync: this, initialIndex: 0);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: ListView(
             shrinkWrap: true,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Store',
                    style: TextStyle(
                     color: Color(0xff4D4D4D),
                     fontSize: 24,
                     fontWeight: FontWeight.bold,
                   ), 
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 210, top: 0),
                  child: IconButton(icon:  Icon(Icons.search_rounded,
                   size: 35,
                  color: Color(0xff4D4D4D),
                  ),
                  onPressed: () {},
                  )
                ),
              ],
            ),
            Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    controller: _tabcontroller,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 3,
                    labelColor: Color(0xff000000),
                    indicatorColor: Color(0xff314CB6),
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: 'Overview'),
                      Tab(text: 'Engineering'),
                      Tab(text: 'Science'),
                      Tab(text: 'Business & Accounting'),
                    ],
                  ),
                ),
                 ),
               Container(
                 width: double.maxFinite,
                height: 2000,
                child: TabBarView(
                  controller: _tabcontroller,
                  children: [
                    OverviewScreen(),
                    EngineeringScreen(),
                     ScienceScreen(),
                     BusinessAndAccountingScreen(),
                  ],
                ),
                 )
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}