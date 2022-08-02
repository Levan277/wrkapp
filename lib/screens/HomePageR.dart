
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/size.dart';
import '../models/category.dart';
import '../widgets/search_testfield.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class HomeR extends StatefulWidget {
  const HomeR({Key? key}) : super(key: key);

  @override
  State<HomeR> createState() => _HomeRState();
}

class _HomeRState extends State<HomeR> {
  int index = 2;
  Category category1 = Category(name: 'Familiarizing Yourself With Racism ', noOfCourses: 'Unit 1', thumbnail: '');
  Category category2 = Category(name:  'Power & Opression', noOfCourses: 'Unit 2', thumbnail: '');
  Category category3 = Category(name: 'Racism in Canada, The past & The Present', noOfCourses: 'Unit 3', thumbnail: '');
  Category category4 = Category(name: 'White Privilege', noOfCourses: 'Unit 4', thumbnail: '');

  @override
  Widget build(BuildContext context) {

    final List<Widget> items = [
      Icon(Icons.message,size: 30,),
      Icon(Icons.home,size: 30,),
      Icon(Icons.person,size: 30,),
    ];
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          height: 60.0,
          index: index,
          items: items,
          onTap: (index) => setState(() => this.index = index),
        ),
        drawer: Drawer(),


    // appBar: AppBar(
    //
    // backgroundColor: Colors.pink.shade400,
    //
    // toolbarHeight: 100,
    //
    // elevation: 14,
    //
    // shape: RoundedRectangleBorder(
    //
    // borderRadius:
    //
    // BorderRadius.only(bottomRight: Radius.circular(70),bottomLeft: Radius.circular(70))
    //
    // ),
    //
    // title: Text('Let Me Flutter',),
    //
    // actions: [
    //
    // Row(
    //
    // children: [
    //
    // Container(
    //
    // height: 40,width: 40,
    //
    // alignment: Alignment.center,
    //
    // decoration: BoxDecoration(
    //
    // boxShadow: [
    //
    // BoxShadow(blurRadius: 7,spreadRadius: 3,
    //
    // color: Colors.pink
    //
    // )
    //
    // ],
    //
    // shape: BoxShape.circle,
    //
    // color: Colors.pink.shade400
    //
    // ),
    //
    // child: Icon(Icons.search,size: 20,
    //
    // ),
    //
    // ),
    //
    // SizedBox(width: 10,),
    //
    // Container(
    //
    // height: 40,width: 40,
    //
    // alignment: Alignment.center,
    //
    // decoration: BoxDecoration(
    //
    // boxShadow: [
    //
    // BoxShadow(blurRadius: 7,spreadRadius: 3,
    //
    // color: Colors.pink
    //
    // )
    //
    // ],
    //
    // shape: BoxShape.circle,
    //
    // color: Colors.pink.shade400
    //
    // ),
    //
    // child: Icon(Icons.notifications,size: 20,
    //
    // ),
    //
    // ),
    //
    // SizedBox(width: 10,),  Container(
    //
    // height: 40,width: 40,
    //
    // alignment: Alignment.center,
    //
    // decoration: BoxDecoration(
    //
    // boxShadow: [
    //
    // BoxShadow(blurRadius: 7,spreadRadius: 3,
    //
    // color: Colors.pink
    //
    // )
    //
    // ],
    //
    // shape: BoxShape.circle,
    //
    // color: Colors.pink.shade400
    //
    // ),
    //
    // child: Icon(Icons.logout,size: 20,
    //
    // ),
    //
    // ),
    //
    // SizedBox(width: 26,)
    //
    // ],
    //
    // ),
    //
    // ],
    // ),

    body: ListView(
          children: [

            Column(

              children: [
             AppBar1(),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Explore Topics",
                  style: GoogleFonts.anton(fontSize: 40),),
                ),
                Row(
                  children: [
                    Card(
                      child: Container(
                        height: 150,
                        child: ClipRRect(
                          child: Image.asset('assets/images/endracism2.jpeg'),
                        ),


                      ),
                    ),
                    Expanded(
                      child: Container(
                        child:Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Column(

                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(category1.noOfCourses + ':',
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                    fontSize: 26,

                                  ),
                                ),
                              ),
                              SizedBox(height: 12,),

                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(category1.name,
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),
                                ),
                              ),
                              SizedBox(height: 12,),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Topics: Definitions, Racism Spectrum')),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(18, 18, 0, 0),
                  child: Row(
                    //UNIT 2
                    children: [

                      Expanded(
                        child: Container(
                          child:  Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(category2.noOfCourses+ ':',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepPurpleAccent,
                                    fontSize: 26,

                                  ),
                                ),
                              ),
                              SizedBox(height: 12,),

                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(category2.name,

                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),
                                ),
                              ),
                              SizedBox(height: 12,),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Topics: What is power/oppresion?\nWho can be racist?')),

                            ],
                          ),
                        ),
                      ),


                    Card(
                      child: Container(
                        height: 150.0,
                        child: ClipRRect(
                          child:Image.asset('assets/images/power.jpeg'),
                        ),
                      ),
                    )
                    ],

                  ),
                ),
                //UNIT 3
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 18, 0, 0),
                  child: Row(
                    children: [
                      Card(
                        child: Container(
                          height: 150,
                          child: ClipRRect(
                            child: Image.asset('assets/images/canada_flag.jpeg'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child:Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Column(

                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(category3.noOfCourses+ ':',
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                      fontSize: 26,

                                    ),
                                  ),
                                ),
                                SizedBox(height: 12,),

                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(category3.name,
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18
                                    ),
                                  ),
                                ),
                                SizedBox(height: 12,),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text('Topics: History of ethnic groups, contempory racism')),
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                //unit 4
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 18, 0, 0),
                  child: Row(

                    children: [

                      Expanded(
                        child: Container(
                          child:  Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(category4.noOfCourses+ ':',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                    fontSize: 26,

                                  ),
                                ),
                              ),
                              SizedBox(height: 12,),

                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(category4.name,

                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),
                                ),
                              ),
                              SizedBox(height: 12,),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Topics: What is power/oppresion?\nWho can be racist?')),

                            ],
                          ),
                        ),
                      ),


                      Card(
                        child: Container(
                          height: 150.0,
                          child: ClipRRect(
                            child:Image.asset('assets/images/privilege.jpeg'),
                          ),
                        ),
                      )
                    ],

                  ),
                ),
              ],

            ),



          ],
        ),




      ),
    );
  }
}

class AppBar1 extends StatelessWidget {
  const AppBar1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 0.5],
          colors: [
            Color(0xffA8010F),
            Color(0xffFF4433),
            // Color(0xff886ff2),
            // Color(0xff6849ef),
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello,\nGood Morning",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              InkWell(
                onTap: (){

                },
                child: Icon(
                  Icons.message,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const SearchTextField()
        ],
      ),
    );
  }
}

