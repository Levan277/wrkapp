import 'dart:convert';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class TopicHome extends StatelessWidget {
  const TopicHome({Key? key}) : super(key: key);

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
bottomNavigationBar: CurvedNavigationBar(
  backgroundColor: Color(0xffF7C8D3),
  color: Colors.yellow.shade800,
  items: [
    Icon(Icons.home),
    Icon(Icons.message),
    Icon(Icons.support_agent_rounded),
  ],
),
        ),
      );
  }
}


