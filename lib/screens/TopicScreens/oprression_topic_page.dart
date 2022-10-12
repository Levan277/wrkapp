
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/materiaL.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:wrkapp/Audio/TopicAudios/OprresionT/culturalAT.dart';
import 'package:wrkapp/Audio/TopicAudios/OprresionT/interpersonalAT.dart';
import 'package:wrkapp/Audio/TopicAudios/OprresionT/personalAT.dart';
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
import '../../widgets/Asset_player.dart';
import '../finalScreens/final_home.dart';
import '../support_screens/support_home_screen.dart';
import '../tweetScreen.dart';


class OppresionTopicPage extends StatefulWidget {
  const OppresionTopicPage({Key? key}) : super(key: key);

  @override
  State<OppresionTopicPage> createState() => _OppresionTopicPageState();
}

class _OppresionTopicPageState extends State<OppresionTopicPage> {
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
        title: Text("More About Oppression"),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,

      ),
      body: ListView(
        children: [
          Column(
            children: [


            ],


          ),
          //column 2
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AssetPlayerWidget(asset: 'assets/u2_sec2_personaloppr.mp3', description: 'Personal'),
              // SizedBox(height:600, width:double.infinity,child: PersonalAT()),
                Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                 child: Card(
                    child: RichText(
                      text:  TextSpan(
                        children: [
                          TextSpan(text: 'What are some beliefs you have developed over the years that would be considered as personal oppression?', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),

                        ],
                      ),
                    ),
                  ),

                )),
             SizedBox(height: 10,),
              AssetPlayerWidget(asset: 'assets/u2_sec2_interpersonaloppr.mp3', description: 'Interpersonal'),
              // SizedBox(height:600, width:double.infinity,child:InterpersonalAT()),
              Center(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                      children: [
                        TextSpan(text: 'Brainstorm some situations where either you or someone else has taken their personal beliefs and used them against others? ', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),

                      ],
                    ),
                  ),
                ),
               ),
              ),
              SizedBox(height: 10,),
              AssetPlayerWidget(asset: 'assets/u2_sec2_institutionaloppr.mp3', description: 'Institutional'),
              // SizedBox(height:600, width:double.infinity,child:InstitutionalAT()),
              Center(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:  Card(
                  child: RichText(
                    text:  TextSpan(
                      children: [
                        TextSpan(text: 'Can you think of an example of institutional oppression? Possibly in the education system or policing system, for example?  ', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),

                      ],
                    ),
                  ),
                ),

              )),
              SizedBox(height: 10,),

              AssetPlayerWidget(asset: 'assets/u2_sec2_cultoppr.mp3', description: 'Cultural'),
              // SizedBox(height:600, width:double.infinity,child:CulturalAT()),
              Center(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                      children: [
                        TextSpan(text: 'What examples of oppression at the cultural level can you think of? Possibly things you have personally experienced. ', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),

                      ],
                    ),
                  ),
                ),
              )),

            ],
          ),
        ],

      ),
    ),
    );

  }
}


