import 'package:flutter/cupertino.dart';
import 'package:flutter/materiaL.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:wrkapp/Audio/u1_sec1_summary_audio.dart';
import 'package:wrkapp/Audio/u1_sec2_summary.dart';
import 'package:wrkapp/screens/finalScreens/final_home.dart';
import 'package:wrkapp/screens/support_screens/support_home_screen.dart';
import 'package:wrkapp/screens/tweetScreen.dart';
import 'package:wrkapp/screens/unitScreens/unit1/unit1_main.dart';
import 'package:wrkapp/widgets/Asset_player.dart';

import '../unit3/contemp_racism.dart';


class RacismSpectrum extends StatefulWidget {
  const RacismSpectrum({Key? key}) : super(key: key);

  @override
  State<RacismSpectrum> createState() => _RacismSpectrumState();
}

class _RacismSpectrumState extends State<RacismSpectrum> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

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
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: Text("Unit 1"),
        actions: [Icon(Icons.support_agent_rounded)],
      ),
      body: ListView(
        children: [
          Column(
            children: [

              Container(
                height: 100,
                width: double.infinity,

                color: Colors.pinkAccent,
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ElevatedButtonTheme(
                            data: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(minimumSize: Size(120,60),primary: Colors.black),) ,
                            child: ButtonBar(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ElevatedButton(
                                  child: Text('Section 1: Basic Definitions ',style: GoogleFonts.montserrat(fontSize: 15),),
                                  onPressed: () {
                                       Navigator.push(context, MaterialPageRoute(builder: (context)=>UnitsPage()));
                                  },
                                ),
                                ElevatedButton(
                                  child: Text('Section 2: Racism Spectrum',style: GoogleFonts.montserrat(fontSize: 15)),
                                  onPressed: () {

                                  },
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),

              ),

            ],
          ),
          //column 2
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AssetPlayerWidget(asset: 'assets/u1_sec2_summary.mp3', description: 'Section 2: Summary'),
              // SizedBox(height:700, width:double.infinity,child: Unit1Sec2Summary()),
SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Image.asset('assets/images/u1sec2.jpg')),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  //definition 1
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Activity #1",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 20),),
                  ),),
                ),
              ),
              Container(

                padding: EdgeInsets.all(12.0),
                child: Text("Looking at the following chart, take note of what forms of racism you, your family and/or friends have experienced, and what types of racism you have participated in. Then ask yourself these questions: Which forms of racism have you heard about? What haven’t you heard about? Were there acts of racism that you didn’t know were racist? If so, what were they? ",style: TextStyle(
                  fontSize: 20,
                ),)
              ),
              SizedBox(height: 10,),
              Center(child: Image.asset('assets/images/racism_spec.jpg'),heightFactor: 1.5,),

              //definition 2
              SizedBox(height: 40,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Activity #2",style: TextStyle(color: Colors.black,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Text('Looking at the scale below, determine where you fall on it. After doing so, ask yourself the following questions (be honest!): ',style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold,

                ),),
              ),
       Container(
         padding: EdgeInsets.all(8.0),
         child: RichText(
           text:  TextSpan(
               children: [
                 TextSpan(text: 'Where are you on each scale right now? Why do you think you fall there? What things in your life do you think has contributed to where you fall on the scale at this moment in your life?\n ', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                 TextSpan(text: 'Have you been in other places on this scale throughout your life? If so, where? Why? What things in your past do you think contributed to where you fell on the scale before?\n ', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                 TextSpan(text: 'Do you like where you are on the scale right now? Why or why not?\n  ',style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                 TextSpan(text: 'If you are unhappy with where you are on the scale right now, where would you wish you were? How do you think you would achieve moving places on the scale? \n ', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                 TextSpan(text: 'Where do you think is a healthy place to be on the scale? Why?\n ', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                 TextSpan(text: 'Where do you think the people you surround yourself with (i.e., friends, family) are on the scale? \n ', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
               ]
           ),
         ),
       ),

              SizedBox(height: 10,),
              Center(child: Image.asset('assets/images/racism_fall.jpg'),heightFactor: 1.0,),


//definition 3








            ],
          )
        ],

      ),
    ),
    );

  }
}
