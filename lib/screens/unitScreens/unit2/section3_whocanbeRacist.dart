
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/materiaL.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:wrkapp/Audio/summary_of_units.dart';
import 'package:wrkapp/Audio/unit2_audio/ex_of_individial_pwr_auidio.dart';
import 'package:wrkapp/Audio/unit2_audio/ex_of_institutional_pwr_audio.dart';
import 'package:wrkapp/Audio/unit2_audio/oppression_audio.dart';
import 'package:wrkapp/Audio/unit2_audio/reflection_activity.dart';
import 'package:wrkapp/Audio/unit2_audio/what_is_superiority_audio.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wrkapp/Audio/unit2_audio/who_Can_be_racist_p2.dart';
import 'package:wrkapp/Audio/unit2_audio/who_can_be_Racist_audio.dart';
import 'package:wrkapp/Audio/unit2_audio/whocanberacist3.dart';
import 'package:wrkapp/Audio/unit2_audio/whocanberacist4.dart';
import 'package:wrkapp/Audio/unit2_audio/whocanberacist5.dart';
import 'package:wrkapp/screens/unitScreens/unit2/section1_typesofpower.dart';
import 'package:wrkapp/widgets/hyperlink_widget.dart';

import '../../../widgets/videoWidgets/chewie_list_widget.dart';


class Section3WCBR extends StatelessWidget {
  const Section3WCBR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width ;
    double height = MediaQuery. of(context). size. height;
    return SafeArea(child: Scaffold(

      appBar: AppBar(
        title:  Text('Unit 2: Power & Oppresion'),
        backgroundColor: Colors.pink,
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
                                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Unit2Main()));

                                  },
                                ),
                                ElevatedButton(
                                  child: Text('Section 2: Oprresion',style:GoogleFonts.montserrat(fontSize: 15)),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Section3WCBR()));
                                  },
                                ),
                                ElevatedButton(
                                  child: Text('Section 3: Who Can Be Racist?',style: GoogleFonts.montserrat(fontSize: 15)),
                                  onPressed: () {},
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
             padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
             child: Container(

                 child: Center(child: Text("Who Can Be Racist?",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),))),
           ),
              SizedBox(height:700, width:double.infinity,child: WhoCanBeRacistA()),
              SizedBox(height: 25,),
              SizedBox(height:700, width:double.infinity,child: WhoCanBeRacist2A()),
              SizedBox(height: 25,),
              SizedBox(height:700, width:double.infinity,child:   WhoCanBeRacist3A()),
              SizedBox(height: 25,),
              SizedBox(height:700, width:double.infinity,child:   WhoCanBeRacist4A()),
              SizedBox(height: 25,),
              SizedBox(height:700, width:double.infinity,child:   WhoCanBeRacist5A()),

              SizedBox(height: 20,),
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //image 1
                  Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/laptop.jpg'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  //image 2
                  Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/endracism2.jpeg'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("Scenerio Activity",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("Considering the information above, read the scenario below. ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child:   Text('Jordan, who is a black girl, is dating David, who is a white boy. When David asks to go over to Jordan’s house to hang out, Jordan gets nervous and usually makes up excuses about why he cannot come over. One day David finally persuades Jordan to let him go over to her house so he can meet her family. Though, Jordan sets one condition; David is not allowed to introduce himself as her boyfriend. David asks why not, and Jordan replies saying, “My parents have made it very clear that I am not allowed to date a white person.” Shocked, David asks why not, and Jordan answers, “They do not want to ruin our bloodline. They want to keep it Black.” David does not ask Jordan any other follow-up questions, though feels very uncomfortable when he does eventually meet Jordan’s family as Jordan’s “friend.”  ', style: TextStyle(color: Colors.black,fontSize: 16,height: 1.5),),
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("Reflection",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
              ),
              SizedBox(height:600, width:double.infinity,child: ReflectionScenarioU2()),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child:   Text('1. Consider the scenario and have a discussion about the following questions. ', style: TextStyle(color: Colors.black,fontSize: 16,height: 1.5,fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: '\t a. Why do you think is the underlying reason why Jordan’s parents are against Jordan being in a relationship with a white person? Where do you think this rule of keeping the bloodline intact came from?\n\n ', style: TextStyle(color: Colors.black,fontSize: 16,),),
                          TextSpan(text: '\t b. Would you consider Jordan’s parents to be racist? Why or why not?  ', style: TextStyle(color: Colors.black,fontSize: 16),),
                        ]
                    ),
                  ),
                ),
              ),


              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child:   Text('2. Now reverse the situation. Imagine that David’s family does not want to ruin the bloodline and Jordan must introduce herself as David’s friend instead of his girlfriend.  . ', style: TextStyle(color: Colors.black,fontSize: 16,height: 1.5,fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: '\t a. Do you think that David’s parents are racist?\n\n ', style: TextStyle(color: Colors.black,fontSize: 16,),),
                          TextSpan(text: '\t b. What do you think is the underlying reason why David’s parents are against David being in a relationship with a Black person? Is their reasoning different to Jordan’s parents’ reasoning? Why or why not?   ', style: TextStyle(color: Colors.black,fontSize: 16),),
                        ]
                    ),
                  ),
                ),
              ),
              //definition 2
              SizedBox(height: 40,),









            ],
          ),
        ],

      ),
    ),
    );

  }
}


