

import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/materiaL.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:wrkapp/Audio/summary_of_units.dart';
import 'package:wrkapp/Audio/unit2_audio/ex_of_individial_pwr_auidio.dart';
import 'package:wrkapp/Audio/unit2_audio/ex_of_institutional_pwr_audio.dart';
import 'package:wrkapp/Audio/unit2_audio/what_is_superiority_audio.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wrkapp/screens/unitScreens/unit2/section2_oprresion.dart';
import 'package:wrkapp/screens/unitScreens/unit2/section3_whocanbeRacist.dart';
import 'package:wrkapp/widgets/Asset_player.dart';
import 'package:wrkapp/widgets/hyperlink_widget.dart';

import '../../finalScreens/final_home.dart';
import '../../support_screens/support_home_screen.dart';
import '../../tweetScreen.dart';


class Unit2Main extends StatefulWidget {
  const Unit2Main({Key? key}) : super(key: key);

  @override
  State<Unit2Main> createState() => _Unit2MainState();
}

class _Unit2MainState extends State<Unit2Main> {
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
        backgroundColor: Colors.pinkAccent,
        title: Text('Unit 2: Power & Oppresion'),
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
                                child: Text('Section 1: Types of Power',style: GoogleFonts.montserrat(fontSize: 15),),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Unit2Main()));
                                },
                              ),
                              ElevatedButton(
                                child: Text('Section 2: Oprresion',style: GoogleFonts.montserrat(fontSize: 15)),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Section2Oppresion()));
                                },
                              ),
                              ElevatedButton(
                                child: Text('Section 3: Who Can Be Racist?',style: GoogleFonts.montserrat(fontSize: 15)),
                                onPressed: () {
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                //image 1

              ],),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("Two Types of Power",style: GoogleFonts.montserrat(fontSize: 32,fontWeight: FontWeight.bold),),
              ),
SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  //definition 1
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Individual Power",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child:

                  ExpandableText(
                      'The power one person has over another.',
                      expandText: 'show more',
                      collapseText: 'show less',
                      style: TextStyle(color: Colors.black,fontSize: 16)
                  ),

                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit2images/power.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit2images/power2-transformed.jpeg'),
                  ),
                ],
              ),

              //definition 2
              SizedBox(height: 40,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 215,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  //definition 1
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Institutional Power",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child:

                  ExpandableText(
                      'The power an insitution has over many people.',
                      expandText: 'show more',
                      collapseText: 'show less',
                      style: TextStyle(color: Colors.black,fontSize: 16)
                  ),

                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit2images/instit.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:AssetImage('assets/images/unit2images/instit2.jpg'),
                  ),
                ],
              ),
          SizedBox(height: 20,),

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
              SizedBox(height: 10,),

              // SizedBox(height: 700, width:double.infinity,child: WISuperiorityAudio()),
AssetPlayerWidget(asset: 'assets/u2_sec1_superiority.mp3', description: 'What is Superiority?'),
              Center(
                child: Padding(padding:
                EdgeInsets.all(12),
                child:   Text('Activity #1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,),) ,
                ),
              ),
              // SizedBox(height:700, width:double.infinity,child: EOIndividualpwrAud()),
              AssetPlayerWidget(asset: 'assets/u2_Sec1_individualpower.mp3', description: 'Example of Individual Power'),
              SizedBox(height: 15,),
              Center(
                child: Padding(padding:
                EdgeInsets.all(12),
                  child:   Text('Reflection',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,),) ,
                ),
              ),
              SizedBox(height: 5,),




              Container(

                padding: EdgeInsets.all(12.0),
                child: Card(
                  child:

                  ExpandableText(
                      'Before completely the activity below, watch the full interaction between Amy Cooper and Christian Cooper',
                      expandText: 'show more',
                      collapseText: 'show less',
                      style: TextStyle(color: Colors.black,fontSize: 16)
                  ),

                ),

              ),
              Center(child: HyperLinkText(text: 'Link To Video', urlText: 'https://www.youtube.com/watch?v=aPvb_mszKew',)),

SizedBox(height: 10,),

        Container(
        padding: EdgeInsets.all(12.0),
    child: Card(
    child:

    ExpandableText(
        '1. Pay attention to Amy and Christian’s attitudes and physicality (expressions, gestures, body posture) in the situation. How do they differ? \n 2. Why do you think Amy reacted the way that she did? \n 3. What was Christian’s goal in the situation? What was Amy’s?\n4. Who had more power in the altercation? How did each of them use their power? What type of power was demonstrated in this situation? \n 5. How is, “I’m going to tell them that there’s an African American man threatening my life” a powerful statement? What baggage does it carry? What does is reflect about society?  \n6. What do you think could have happened if Christian did not record the interaction? Do you think the power dynamics would have changed? If so, how?  \n',
        expandText: 'show more',
        collapseText: 'show less',
        style: TextStyle(color: Colors.black,fontSize: 16)
    ),


    ),

    ),



              // SizedBox(height:700, width:double.infinity,child: EOInstitutionalpwrAudio()),
              AssetPlayerWidget(asset: 'assets/u2_sec1_instpwr.mp3', description: 'Example of Institutional power'),
              SizedBox(height: 15,),
              Center(
                child: Padding(padding:
                EdgeInsets.all(12),
                  child:   Text('Reflection',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,),) ,
                ),
              ),
              SizedBox(height: 5,),


              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child:

                  ExpandableText(
                      '1.How is the use of power different in this example to the Amy Cooper/Christian situation?  \n 2. In the Amy Cooper/Christian altercation, Christian had some power as he was able to film Amy. Why would it have been harder for the Indigenous people to gain power in their situation?   \n',
                      expandText: 'show more',
                      collapseText: 'show less',
                      style: TextStyle(color: Colors.black,fontSize: 16)
                  ),

                ),

              ),
              //
              // SizedBox(height:700, width:double.infinity,child: SectionSummary()),
              AssetPlayerWidget(asset: 'assets/u2_Sec1_sum.mp3', description: 'Section Summary'),
            ],
          ),
        ],

      ),
    ),
    );

  }
}


