
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/materiaL.dart';
import 'package:google_fonts/google_fonts.dart';
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


class OppresionTopicPage extends StatelessWidget {
  const OppresionTopicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width ;
    double height = MediaQuery. of(context). size. height;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("More About Oppression"),
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
          //column 2
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height:600, width:double.infinity,child: PersonalAT()),
                Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('What are some beliefs you have developed over the years that would be considered as personal oppression?',style: GoogleFonts.montserrat(fontSize: 24),),
                )),
             SizedBox(height: 10,),
              SizedBox(height:600, width:double.infinity,child:InterpersonalAT()),
              Center(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Brainstorm some situations where either you or someone else has taken their personal beliefs and used them against others? ',style: GoogleFonts.montserrat(fontSize: 24),),
              )),
              SizedBox(height: 10,),

              SizedBox(height:600, width:double.infinity,child:InstitutionalAT()),
              Center(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Can you think of an example of institutional oppression? Possibly in the education system or policing system, for example? ',style: GoogleFonts.montserrat(fontSize: 24),),
              )),
              SizedBox(height: 10,),

              SizedBox(height:600, width:double.infinity,child:CulturalAT()),
              Center(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('What examples of oppression at the cultural level can you think of? Possibly things you have personally experienced. ',style: GoogleFonts.montserrat(fontSize: 24),),
              )),

            ],
          ),
        ],

      ),
    ),
    );

  }
}


