import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/materiaL.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:wrkapp/Audio/TopicAudios/OprresionT/culturalAT.dart';
import 'package:wrkapp/Audio/TopicAudios/OprresionT/interpersonalAT.dart';
import 'package:wrkapp/Audio/TopicAudios/OprresionT/personalAT.dart';
import 'package:wrkapp/Audio/TopicAudios/whitePrivilegeT/power_benefit_doubt.dart';
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


class IndegenousPeoplesTopic extends StatefulWidget {
  const IndegenousPeoplesTopic({Key? key}) : super(key: key);

  @override
  State<IndegenousPeoplesTopic> createState() => _IndegenousPeoplesTopicState();
}

class _IndegenousPeoplesTopicState extends State<IndegenousPeoplesTopic> {
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
        title: Text("More About Indigenous Peoples"),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        actions: [Icon(Icons.support_agent_rounded)],
      ),
      body: ListView(
        children: [
          Column(
            children: [


            ],


          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Center(child: Text("First Nations ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(12.0),
            child: Card(
              child: RichText(
                text:  TextSpan(
                  children: [
                    TextSpan(text: '1.\tHas 617 different communities that are spread across 6 regions (Facing History & Ourselves). \n', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                    TextSpan(text: '2.\t Though, even within these regions, “there is a richness and diversity of identity, culture, and customs, although the communities share…similar characteristics, languages, stories, and outlooks” (Facing History & Ourselves).  \n', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))] ),
                  ],
                ),
              ),
            ),
          ),


          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Center(child: Text("Inuit",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(12.0),
            child: Card(
              child: RichText(
                text:  TextSpan(
                  children: [
                    TextSpan(text: '1.\t“refers…to the Artic indigenous population” (Facing History & Ourselves).  They live in Alaska, Canada, and Greenland (Facing History & Ourselves). )\n', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                    TextSpan(text: '2.\t The word “Inuit” means “people,” and the language they speak is Inuktitut, “though there are regional dialects that are known by slightly different names” (Facing History & Ourselves).  \n', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))] ),
                    TextSpan(text: '3.\tCurrently the Inuit communities in “Canada live in the Nunangat—loosely defined as ‘Inuit homeland,” a land that is divided into 4 regions (Facing History & Ourselves).   \n', style: TextStyle(color: Colors.black,fontSize: 16)),
                  ],
                ),
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Center(child: Text("Métis ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(12.0),
            child: Card(
              child: RichText(
                text:  TextSpan(
                  children: [
                    TextSpan(text: '1.\tMétis” is a term that does not completely encompass the “large and diverse group” that it represents (Facing History & Ourselves). “Métis,” which is a French word means “mixed.”   \n', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                    TextSpan(text: "2.\t“The terms describes descendants of both Europeans and First nations people” (Facing History & Ourselves). \n",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black)),
                    TextSpan(text: "3.\t“The history of the Métis reflects the intermingling of the French and First Nations ways of life” (Facing History & Ourselves).  \n",style: TextStyle(fontSize: 16,color: Colors.black),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                    TextSpan(text: '4.\t “As time passed, the people from this community created their own distinct traditions from the First Nations and European Canadians, thus creating a new thread of Indigenous peoples, the Métis. \n', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))] ),
                  ],
                ),
              ),
            ),
          ),




        ],

      ),
    ),
    );

  }
}


