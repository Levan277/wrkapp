
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/materiaL.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:wrkapp/Audio/TopicAudios/OprresionT/culturalAT.dart';
import 'package:wrkapp/Audio/TopicAudios/OprresionT/interpersonalAT.dart';
import 'package:wrkapp/Audio/TopicAudios/OprresionT/personalAT.dart';
import 'package:wrkapp/Audio/TopicAudios/colonization/colonizationAT.dart';
import 'package:wrkapp/Audio/TopicAudios/colonization/decolonizationAT.dart';
import 'package:wrkapp/Audio/TopicAudios/whitePrivilegeT/power_benefit_doubt.dart';
import 'package:wrkapp/Audio/power_audio_topic.dart';
import 'package:wrkapp/Audio/summary_of_units.dart';
import 'package:wrkapp/Audio/unit2_audio/ex_of_individial_pwr_auidio.dart';
import 'package:wrkapp/Audio/unit2_audio/ex_of_institutional_pwr_audio.dart';
import 'package:wrkapp/Audio/unit2_audio/oppression_audio.dart';
import 'package:wrkapp/Audio/unit2_audio/what_is_superiority_audio.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wrkapp/screens/unitScreens/unit2/section1_typesofpower.dart';
import 'package:wrkapp/screens/unitScreens/unit2/section3_whocanbeRacist.dart';
import 'package:wrkapp/widgets/hyperlink_widget.dart';

import '../../Audio/TopicAudios/OprresionT/InstitutionalAT.dart';
import '../finalScreens/final_home.dart';
import '../support_screens/support_home_screen.dart';
import '../tweetScreen.dart';


class ColonizationTopic extends StatefulWidget {
  const ColonizationTopic({Key? key}) : super(key: key);

  @override
  State<ColonizationTopic> createState() => _ColonizationTopicState();
}

class _ColonizationTopicState extends State<ColonizationTopic> {
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
        title: Text("More About Power"),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,

      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height:700, width:double.infinity,child:PowerAudioT()),

            ],


          ),




        ],

      ),
    ),
    );

  }
}


