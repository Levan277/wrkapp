

import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/materiaL.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:wrkapp/Audio/TopicAudios/whitePrivilegeT/power_accumulated.dart';
import 'package:wrkapp/Audio/summary_of_units.dart';
import 'package:wrkapp/Audio/unit2_audio/ex_of_individial_pwr_auidio.dart';
import 'package:wrkapp/Audio/unit2_audio/ex_of_institutional_pwr_audio.dart';
import 'package:wrkapp/Audio/unit2_audio/what_is_superiority_audio.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wrkapp/Audio/unit4_audio/summary_audio.dart';
import 'package:wrkapp/screens/unitScreens/unit2/section2_oprresion.dart';
import 'package:wrkapp/screens/unitScreens/unit2/section3_whocanbeRacist.dart';
import 'package:wrkapp/widgets/hyperlink_widget.dart';

import '../../../widgets/Asset_player.dart';
import '../../finalScreens/final_home.dart';
import '../../support_screens/support_home_screen.dart';
import '../../tweetScreen.dart';


class Unit4Main extends StatefulWidget {
  const Unit4Main({Key? key}) : super(key: key);

  @override
  State<Unit4Main> createState() => _Unit4MainState();
}

class _Unit4MainState extends State<Unit4Main> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width ;
    double height = MediaQuery. of(context). size. height;
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
        backgroundColor: Colors.purple,
        title: Text("Unit 4: White Privilege"),
        centerTitle: true,
        actions: [Icon(Icons.support_agent_rounded)],
      ),
      body: ListView(
        children: [
          Column(





            children: [

              Container(
                width: double.infinity,
                height: 100,
                color: Colors.purple,
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
                                  child: Text('Section 1: White Privilege',style: TextStyle(fontSize: 15),),
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




              Padding(
                padding: EdgeInsets.all(12),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("What Isn’t White Privilege? ",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),
              ),

              SizedBox(height: 20,),

              Container(
                padding: EdgeInsets.all(12.0),
                child: ExpandableText(
                    '\t1. White privilege is not “the suggestion that white people have never struggled” (Collins).\n \n\t2. White privilege is not “the assumption that everything a white person has accomplished is unearned” (Collins).',
                    expandText: 'show more',
                    collapseText: 'show less',
                    style: TextStyle(color: Colors.black,fontSize: 16)
                ),
              ),

              Padding(
                padding: EdgeInsets.all(12),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("What is White Privilege?  ",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),
              ),



              SizedBox(height: 20,),

              Container(
                padding: EdgeInsets.all(12.0),
                child: ExpandableText(
               '\t1. White Privilege – “is having greater access to power and resources than people of color [in the same situation] do” \n\n\t2. A different race based on the belief that one’s own race is superior.”  When someone believes that their race—which remember is a social construct that has no grounds in biology—is better than someone else’s, that person will always view themselves as more powerful, no matter what the situation is. ',
                    expandText: 'show more',
                    collapseText: 'show less',
                    style: TextStyle(color: Colors.black,fontSize: 16)
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Expanded(child: Center(child: Image.asset('assets/images/unit1images/whitePrivcircle.jpg'))),
                  SizedBox(width: 70,),

                ],
              ),

              //definition 2
              SizedBox(height: 40,),


              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("Section 2: Types Of White Privilege ",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.all(12),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Power of Normal",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),
              ),
              //d

              Container(
                padding: EdgeInsets.all(12.0),
                child: ExpandableText(
                    '\t1. “Power of Normal” – is addressing smaller, more trivial issues surrounding White privilege such as Band-aid colours,Hair products for all hair types and Lack of foods from other cultures in grocery stores    \n'
                        '\n \t2. These are issues that tend to get more attention than larger issues that have a greater effect on people from that race.  Visit the '
                        '“White Privilege” topics page for a deeper look into these examples. ',
                    expandText: 'show more',
                    collapseText: 'show less',
                    style: TextStyle(color: Colors.black,fontSize: 16)
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("So, what’s the problem? ",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),
              ),

SizedBox(height: 10,),


              Container(
                padding: EdgeInsets.all(12.0),
                child: RichText(
                  text:  TextSpan(
                    children: [
                      TextSpan(text: 'The problem is “if public spaces and goods seem catered to one race” it sends the message that those things are normal and anything different is not. ', style: TextStyle(color: Colors.black,fontSize: 16)),

                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(12),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Power of the Benefit of the Doubt ",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),
              ),


              Container(
                padding: EdgeInsets.all(12.0),
                child: ExpandableText(
                    '“Power of the Benefit of the Doubt” – relates to the fact that white people are more likely to be viewed in a positive light than non-white people. \nWhite people tend to be “treated as individuals, rather than as representatives of (or exceptions to) a stereotyped racial identity”.\n\n'
                        'Example - “White people are less likely to be followed, interrogated or search by law enforcement because they look ‘suspicious’” (Collins).  ',
                    expandText: 'show more',
                    collapseText: 'show less',
                    style: TextStyle(color: Colors.black,fontSize: 16)
                ),
              ),

              SizedBox(height: 10,),



              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

               Expanded(
                 child: Container(
                   child: Image.asset('assets/images/unit1images/colonization.jpg')
                 ),
               )
                ],
              ),


              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.all(12),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Power of The Accumulated Power",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),
              ),
              AssetPlayerWidget(asset: 'assets/u4_sec2_power_of_accumulated_power.mp3', description: ''),
              // SizedBox(height:700, width:double.infinity,child: PowerOfAccum()),

              // Center(
              //   child: Container(
              //     width: 300,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(23),
              //       color: Colors.white,
              //     ),
              //     child: Text("What is Superiority?",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),textAlign: TextAlign.center,),
              //   ),
              // ),
              //superiority audio
            ],
          ),
        ],

      ),
    ),
    );

  }
}


