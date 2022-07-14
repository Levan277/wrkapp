
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/size.dart';
import '../models/category.dart';



class HomeR extends StatefulWidget {
  const HomeR({Key? key}) : super(key: key);

  @override
  State<HomeR> createState() => _HomeRState();
}

class _HomeRState extends State<HomeR> {
  Category category1 = Category(name: 'Familiarizing Yourself With Racism ', noOfCourses: 'Unit 1', thumbnail: '');
  Category category2 = Category(name:  'Power & Opression', noOfCourses: 'Unit 2', thumbnail: '');
  Category category3 = Category(name: 'Racism in Canada, The past & The Present', noOfCourses: 'Unit 3', thumbnail: '');
  Category category4 = Category(name: 'White Privilege', noOfCourses: 'Unit 4', thumbnail: '');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),

    appBar: AppBar(

    backgroundColor: Colors.pink.shade400,

    toolbarHeight: 100,

    elevation: 14,

    shape: RoundedRectangleBorder(

    borderRadius:

    BorderRadius.only(bottomRight: Radius.circular(70),bottomLeft: Radius.circular(70))

    ),

    title: Text('Let Me Flutter',),

    actions: [

    Row(

    children: [

    Container(

    height: 40,width: 40,

    alignment: Alignment.center,

    decoration: BoxDecoration(

    boxShadow: [

    BoxShadow(blurRadius: 7,spreadRadius: 3,

    color: Colors.pink

    )

    ],

    shape: BoxShape.circle,

    color: Colors.pink.shade400

    ),

    child: Icon(Icons.search,size: 20,

    ),

    ),

    SizedBox(width: 10,),

    Container(

    height: 40,width: 40,

    alignment: Alignment.center,

    decoration: BoxDecoration(

    boxShadow: [

    BoxShadow(blurRadius: 7,spreadRadius: 3,

    color: Colors.pink

    )

    ],

    shape: BoxShape.circle,

    color: Colors.pink.shade400

    ),

    child: Icon(Icons.notifications,size: 20,

    ),

    ),

    SizedBox(width: 10,),  Container(

    height: 40,width: 40,

    alignment: Alignment.center,

    decoration: BoxDecoration(

    boxShadow: [

    BoxShadow(blurRadius: 7,spreadRadius: 3,

    color: Colors.pink

    )

    ],

    shape: BoxShape.circle,

    color: Colors.pink.shade400

    ),

    child: Icon(Icons.logout,size: 20,

    ),

    ),

    SizedBox(width: 26,)

    ],

    ),

    ],
    ),

    body: ListView(
          children: [

            Column(
              children: [

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

