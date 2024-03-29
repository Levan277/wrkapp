
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/materiaL.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:wrkapp/Audio/TopicAudios/OprresionT/culturalAT.dart';
import 'package:wrkapp/Audio/TopicAudios/OprresionT/interpersonalAT.dart';
import 'package:wrkapp/Audio/TopicAudios/OprresionT/personalAT.dart';
import 'package:wrkapp/Audio/TopicAudios/whitePrivilegeT/power_benefit_doubt.dart';
import 'package:wrkapp/Audio/TopicAudios/whitePrivilegeT/white_privil_AT.dart';
import 'package:wrkapp/Audio/summary_of_units.dart';
import 'package:wrkapp/Audio/unit2_audio/ex_of_individial_pwr_auidio.dart';
import 'package:wrkapp/Audio/unit2_audio/ex_of_institutional_pwr_audio.dart';
import 'package:wrkapp/Audio/unit2_audio/oppression_audio.dart';
import 'package:wrkapp/Audio/unit2_audio/what_is_superiority_audio.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wrkapp/Audio/white_supremacy.dart';
import 'package:wrkapp/screens/unitScreens/unit2/section1_typesofpower.dart';
import 'package:wrkapp/screens/unitScreens/unit2/section3_whocanbeRacist.dart';
import 'package:wrkapp/widgets/Asset_player.dart';
import 'package:wrkapp/widgets/hyperlink_widget.dart';

import '../../Audio/TopicAudios/OprresionT/InstitutionalAT.dart';
import '../finalScreens/final_home.dart';
import '../support_screens/support_home_screen.dart';
import '../tweetScreen.dart';


class WhitePrivilegeTopic extends StatefulWidget {
  const WhitePrivilegeTopic({Key? key}) : super(key: key);

  @override
  State<WhitePrivilegeTopic> createState() => _WhitePrivilegeTopicState();
}

class _WhitePrivilegeTopicState extends State<WhitePrivilegeTopic> {
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
      appBar: AppBar(
        title: Text("More About White Privilege"),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,

      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Interpersonal",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),),
                    ),),
                  ),
                ),
               AssetPlayerWidget(asset: 'assets/u1_sec1_white_privil.mp3', description: ''),
                SizedBox(height: 15,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Why do you think that Yusuf did not get the job even though he had more qualifications? ',style: GoogleFonts.montserrat(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                )
              ],


            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Why is the term “White privilege” met with resistance?",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20,),textAlign: TextAlign.center,),
                ),),
              ),
            ),

            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(12.0),
              child: ExpandableText(
                  '1.\t It targets a specific group of people.\n\n2.\t “The word white creates discomfort among those who are not used to being defined…by their race” (Collins). \n\n3.\t The word privilege doesn’t seem to belong with middle/lower-class white people (Collins).  \n',
                  expandText: 'show more',
                  collapseText: 'show less',style: TextStyle(color: Colors.black,fontSize: 16)

              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("What are the aspects of White privilege? ",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                ),),
              ),
            ),

            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(12.0),
              child: ExpandableText(
                      '1.\tWhite “privilege should be viewed as a build-in advantage, separate from one’s…income or effort” (Collins) \n\n '
                      '2.\t It refers to “systemic advantages given to white people” (Collins)  \n\n'
                      '3.\tAnd includes “white people’s lack of awareness that they…[hold] this power” (Collins)   \n\n'
                     ,


                  expandText: 'show more',
                  collapseText: 'show less',style: TextStyle(color: Colors.black,fontSize: 16)

              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Power of Normal” Examples",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                ),),
              ),
            ),

            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(12.0),
              child: ExpandableText(
                  '1.\t“The first-aid kit having ‘flesh-coloured’ Band-Aids that only match the skin tone of white people” (Collins).  \n\n '
                      '\tReflection: Do you remember when Band-Aid came out with the series of various skin-toned Band-Aids to solve this issue? What are your thoughts on the new Band-Aids? Do you think that help correct racial discrimination in products that we use? How or how not? \n\n'
                      '2.\t “The products that white people need fo3.\t“The grocery store stocking a variety of food options that reflect the cultural traditions of most white people”    \nr their hair being in the aisle labeled ‘hair care’ rather than in a smaller, separate section of ‘ethnic hair products’” (Collins). \n\n'
                      '',


                  expandText: 'show more',
                  collapseText: 'show less',style: TextStyle(color: Colors.black,fontSize: 16)

              ),
            ),



            //column 2
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AssetPlayerWidget(asset: 'assets/u4_sec2_power_benefit_of_doubt.mp3', description: 'Power of The Benefit of The Doubt'),


                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Container(
                    width: 250,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Power of the Benefit of the Doubt” Examples ",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),


                SizedBox(height: 10,),

                Container(
                  padding: EdgeInsets.all(12.0),
                  child: ExpandableText(
                      '1.\t“If white people are accused of a crime, they are less likely to be presumed guilty, less likely to be sentenced to death and more likely to be portrayed in a fair, nuanced manner by the media outlets” (Collins).  \n\n '
                          '\tActivity #1: Look into the #IfTheyGunnedMeDown campaign \n\n'
                          '2.\t“The personal faults…of white people will likely not be used to later deny opportunities or compassion to people who share their racial identity” (Collins).  \n'
                          ,


                      expandText: 'show more',
                      collapseText: 'show less',style: TextStyle(color: Colors.black,fontSize: 16)

                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Container(
                    width: 250,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Effects of this type of White Privilege",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),


                Container(
                  padding: EdgeInsets.all(12.0),
                  child: ExpandableText(
                      ' \t“Many racialized people suffer from post-traumatic stress disorder due to intense encounters with the police in which they don’t know if they will make it out uninjured and alive (Collins).   \n'
                         ,


                      expandText: 'show more',
                      collapseText: 'show less',style: TextStyle(color: Colors.black,fontSize: 16)

                  ),
                ),

                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Container(
                    width: 250,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Power of the Accumulated Power",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),

            SizedBox(height: 10,),

                Container(
                  padding: EdgeInsets.all(12.0),
                  child: ExpandableText(
                      ' Activity #2 \n\n'
                          '\t“In 2014, the Pew Research Center released a report that revealed the median net worth of a white household was \$141,900; for Black and Hispanic households, that dropped to \$11,000 and \$13,700, respectively” (Collins). For every dollar that a white Canadian makes a person of… \n\n'
                          '1.\t Hispanic descent makes 68.3¢ \n\n'
                          '2.\tFilipino descent makes 79.5¢  \n\n'
                          '3.\tAfrican descent makes 80.4¢  \n\n'
                          '4.\tWest Asian descent makes 82¢  \n\n'
                          '5.\tother racialized groups 82.4¢ (WealthSimple).  \n\n'
                          '\tHow do you think the net worth of a household and income affect a family? What aspects of life does income affect? \n',


                      expandText: 'show more',
                      collapseText: 'show less',style: TextStyle(color: Colors.black,fontSize: 16)

                  ),
                ),
SizedBox(height: 10,),

                Container(
                  padding: EdgeInsets.all(12.0),
                  child: ExpandableText(
                      'Activity #3 \n\n '
                          '\tThese questions are for everyone (racialized people and White people) \n\n'
                          '1.\tWhat privileges do you have in your life?  \n\n'
                          '2.\tHow do you feel about your privileges; before this, did you recognize them as privileges?  \n\n'
                          '3.\tHow did your family attain these privileges?  \n\n'
                          '4.\tIs there generational wealth in your family?   \n\n'
                          '5.\tIf you are able to drive, did your parents pay for your car? Are they paying for your insurance?  \n\n'
                          '\tAre your parents in a position to help you buy a house in the future?  \n\n'
                          '\tReflection: '
                          '\tWhat other examples of White supremacy can you point out in our society? How did people engaged in White supremacy get their message and agendas across? How did they influence people’s ways of thinking? (Hint: If you can’t think of an example, start with the Holocaust.)  \n'
                         ,


                      expandText: 'show more',
                      collapseText: 'show less',style: TextStyle(color: Colors.black,fontSize: 16)

                  ),
                ),



              ],
            ),
          ],

        ),
      ),
    ),
    );

  }
}


