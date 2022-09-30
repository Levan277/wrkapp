import 'dart:convert';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../finalScreens/final_home.dart';
import '../support_screens/support_home_screen.dart';
import '../tweetScreen.dart';

class TopicHome extends StatefulWidget {
  const TopicHome({Key? key}) : super(key: key);

  @override
  State<TopicHome> createState() => _TopicHomeState();
}

class _TopicHomeState extends State<TopicHome> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Explore Topics",style: GoogleFonts.montserrat(fontSize: 32),),

        backgroundColor: Colors.yellow.shade800,

      ),
       body: Column(
         children: [
 Expanded(
   child: Container(
     width: double.infinity,
     color: Colors.yellow.shade800,
     child: Lottie.network('https://assets7.lottiefiles.com/packages/lf20_osnykse9.json'),
   ),
 ),
           Container(
             height: 500,
             width: double.infinity,
             child: ListView(

               children: [

                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                         primary: Colors.black,
                         padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20))),
                     child:  Text(
                       'Race',
                       style: GoogleFonts.montserrat(fontSize: 15),
                     ),
                     onPressed: () {},
                   ),
                 ),

                 //b2


                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                         primary: Colors.black,
                         padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20))),
                     child:  Text(
                       'Ethnicity',
                       style: GoogleFonts.montserrat(fontSize: 15),
                     ),
                     onPressed: () {},
                   ),
                 ),

                 //b3

                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                         primary: Colors.black,
                         padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20))),
                     child:  Text(
                       'White Privilege',
                       style: GoogleFonts.montserrat(fontSize: 15),
                     ),
                     onPressed: () {},
                   ),
                 ),

                 //b4

                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                         primary: Colors.black,
                         padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20))),
                     child:  Text(
                       'Power',
                       style: GoogleFonts.montserrat(fontSize: 15),
                     ),
                     onPressed: () {},
                   ),
                 ),

                 //b5

                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                         primary: Colors.black,
                         padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20))),
                     child:  Text(
                       'Xenophobia',
                       style: GoogleFonts.montserrat(fontSize: 15),
                     ),
                     onPressed: () {},
                   ),
                 ),

                 //b6

                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                         primary: Colors.black,
                         padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20))),
                     child:  Text(
                       'Colonization',
                       style: GoogleFonts.montserrat(fontSize: 15),
                     ),
                     onPressed: () {},
                   ),
                 ),

                 //b7

                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                         primary: Colors.black,
                         padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20))),
                     child:  Text(
                       'Marginalization',
                       style: GoogleFonts.montserrat(fontSize: 15),
                     ),
                     onPressed: () {},
                   ),
                 ),

                 //b8

                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                         primary: Colors.black,
                         padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20))),
                     child:  Text(
                       'Ethnicity',
                       style: GoogleFonts.montserrat(fontSize: 15),
                     ),
                     onPressed: () {},
                   ),
                 ),


                 //b9

                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                         primary: Colors.black,
                         padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20))),
                     child:  Text(
                       'Ethnicity',
                       style: GoogleFonts.montserrat(fontSize: 15),
                     ),
                     onPressed: () {},
                   ),
                 ),
               ],
             ),
           )
         ],
       ),
backgroundColor: Color(0xffF7C8D3),
bottomNavigationBar:  Container(
  color: Colors.white,
  child: SalomonBottomBar(
    currentIndex: _currentIndex,
    onTap: (i){
      setState((){
        _currentIndex = i;
      });
      if(_currentIndex == 0){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>FinalHome()));
      }
      else if(_currentIndex == 1){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeForum()));
      }
      else if(_currentIndex == 2){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LiveSupportHome()));
      }
      else{
        _currentIndex = 0;
      }
    },
    // onTap: (i) => setState(() => _currentIndex = i),

    items: [
      /// Home
      SalomonBottomBarItem(
        icon: Icon(Icons.home),
        title: Text("Home"),
        selectedColor: Colors.purple,
      ),

      /// Forum
      SalomonBottomBarItem(
        icon: Icon(Icons.message),
        title: Text("Forum"),
        selectedColor: Colors.orange,
      ),

      /// Support
      SalomonBottomBarItem(
        icon: Icon(Icons.support_agent_rounded),
        title: Text("Support"),
        selectedColor: Colors.teal,
      ),
    ],
  ),
),
        ),
      );
  }
}


