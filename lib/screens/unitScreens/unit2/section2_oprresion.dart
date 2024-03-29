
import 'package:expandable_text/expandable_text.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/materiaL.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:video_player/video_player.dart';
import 'package:wrkapp/Audio/summary_of_units.dart';
import 'package:wrkapp/Audio/summary_of_units_sec2_u2.dart';
import 'package:wrkapp/Audio/unit2_audio/ex_of_individial_pwr_auidio.dart';
import 'package:wrkapp/Audio/unit2_audio/ex_of_institutional_pwr_audio.dart';
import 'package:wrkapp/Audio/unit2_audio/oppression_audio.dart';
import 'package:wrkapp/Audio/unit2_audio/what_is_superiority_audio.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wrkapp/screens/unitScreens/unit2/section1_typesofpower.dart';
import 'package:wrkapp/screens/unitScreens/unit2/section3_whocanbeRacist.dart';
import 'package:wrkapp/widgets/hyperlink_widget.dart';

import '../../../widgets/Asset_player.dart';
import '../../finalScreens/final_home.dart';
import '../../support_screens/support_home_screen.dart';
import '../../tweetScreen.dart';


class Section2Oppresion extends StatefulWidget {

  const Section2Oppresion({Key? key}) : super(key: key);

  @override
  State<Section2Oppresion> createState() => _Section2OppresionState();
}

class _Section2OppresionState extends State<Section2Oppresion> {
  var _currentIndex = 0;
  late FlickManager flickManager;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    flickManager = FlickManager(videoPlayerController: VideoPlayerController.asset('assets/videos/u2s2op.mp4'),autoPlay: false);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    flickManager.dispose();
  }
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
              flickManager.flickControlManager?.pause();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FinalHome()));
            }
            else if(_currentIndex == 1){
              flickManager.flickControlManager?.pause();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeForum()));
            }
            else if(_currentIndex == 2){
              flickManager.flickControlManager?.pause();
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
        title:  Text('Unit 2: Power & Oppresion'),
        backgroundColor: Colors.blue,
        centerTitle: true,

      ),
      body: ListView(
        children: [
          Column(
            children: [



              Container(
                width: double.infinity,
                height: 100,
                color: Colors.blue,
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
                                  child: Text('Section 1: Types of Power',style: GoogleFonts.montserrat(fontSize: 15),),
                                  onPressed: () {
                                    flickManager.flickControlManager?.pause();
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Unit2Main()));

                                    },
                                ),
                                ElevatedButton(
                                  child: Text('Section 2: Oprression',style: GoogleFonts.montserrat(fontSize: 15)),
                                  onPressed: () {
                                    flickManager.flickControlManager?.pause();
                                  },
                                ),
                                ElevatedButton(
                                  child: Text('Section 3: Who Can Be Racist?',style: GoogleFonts.montserrat(fontSize: 15)),
                                  onPressed: () {
                                    flickManager.flickControlManager?.pause();
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Section3WCBR()));
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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
            ),
            child:FlickVideoPlayer(
              flickManager: flickManager,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                ],),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("The 4 Levels of Oppression",style: GoogleFonts.montserrat(fontSize: 32,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  //definition 1
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Personal",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: ExpandableText(
                    'Is “associated with our values, beliefs and feelings about individuals different from us” (Pizaña) \n Example - Racism: believing that one racial group is smarter than another.',
                    expandText: 'show more',
                    collapseText: 'show less',
                    style: TextStyle(color: Colors.black,fontSize: 16)
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit2images/oppr1.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:  AssetImage('assets/images/unit2images/oppr2.jpg'),
                  ),
                ],
              ),

              //definition 2
              SizedBox(height: 40,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Interpersonal",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: ExpandableText(
                    'Interpersonal means “relating to relationships or communication between people” (Oxford Dictionaries). \n So, interpersonal oppression focuses on “our actions, behaviour and language as we interact with individuals different from us” \n Example -  Racism: racist jokes, use of racial slurs, harassment, stereotyping',
                    expandText: 'show more',
                    collapseText: 'show less',
                    style: TextStyle(color: Colors.black,fontSize: 16)
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit2images/oppr3.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:  AssetImage('assets/images/unit2images/oppr4.jpg'),
                  ),
                ],
              ),
              SizedBox(height: 20,),


              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Institutional",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: ExpandableText(
                    'Includes “the rules, policies, procedures and practices within an institution that define who…can fully participate or those that may be excluded” (Pizaña).\n Example - Racism: A company refusing to hire someone because of their hairstyle or religious clothing ',
                    expandText: 'show more',
                    collapseText: 'show less',
                    style: TextStyle(color: Colors.black,fontSize: 16)
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:  AssetImage('assets/images/unit2images/instopp1.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:AssetImage('assets/images/unit2images/instopp2.jpg'),
                  ),
                ],
              ),
              SizedBox(height: 20,),



              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Cultural",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: ExpandableText(
                    'Is “how we define what is right, normal, the truth or beautiful” \n  Example - Racism: “The cultural narrative that White folks are safer, less violent, and better citizens” ',
                    expandText: 'show more',
                    collapseText: 'show less',
                    style: TextStyle(color: Colors.black,fontSize: 16)
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit2images/oppr5.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit2images/oppr6.jpg'),
                  ),
                ],
              ),
              SizedBox(height: 20,),



              Center(
                child: Padding(padding:
                EdgeInsets.all(12),
                  child:   Text('Definitions',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,),) ,
                ),
              ),


              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 200,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("Agents of oppression ",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: ExpandableText(
                    '“Are members of the dominant social groups” that are privileged [in comparison to targets of oppression]”.(Vanderbilt University)\n Example-  A White person going through customs without having to worry about being racially profiled and stopped at the boarder because of their race.”',
                    expandText: 'show more',
                    collapseText: 'show less',
                    style: TextStyle(color: Colors.black,fontSize: 16)
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:AssetImage('assets/images/unit2images/agentoppr1.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit2images/agentoppr2.jpg'),
                  ),
                ],
              ),




SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 180,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Targets of oppression ",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: ExpandableText(
                    '“Are members of social identity groups that are” denied the right to vote, “exploited, and victimized, by agents of oppression” (Vanderbilt University).\n Example- Racialized groups like Black and Indigenous people are more likely to be incarcerated. ',
                    expandText: 'show more',
                    collapseText: 'show less',
                    style: TextStyle(color: Colors.black,fontSize: 16)
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit2images/si1.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit2images/si2.jpg'),
                  ),
                ],
              ),

SizedBox(height: 10,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 180,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Internalized Oppression ",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: ExpandableText(
                    'Is the process in which “people in the target group make oppression…personal” by believing the “lies, prejudices, and stereotypes” to be the truth.(Vanderbilt University).\nEffects of internalized oppression include low self-esteem, Self-doubt, Self-loathing ',
                    expandText: 'show more',
                    collapseText: 'show less',
                    style: TextStyle(color: Colors.black,fontSize: 16)
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit2images/internalized1.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit2images/internalized2.jpg'),
                  ),
                ],
              ),
SizedBox(height: 25,),

              // SizedBox(height:700, width:double.infinity,child: SectionSummary2()),


            ],
          ),
        ],

      ),
    ),
    );

  }
}


