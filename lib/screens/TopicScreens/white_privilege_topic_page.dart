
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/materiaL.dart';
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


class WhitePrivilegeTopic extends StatelessWidget {
  const WhitePrivilegeTopic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width ;
    double height = MediaQuery. of(context). size. height;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("More About White Privilege"),
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
            child: Center(child: Text("Why is the term “White privilege” met with resistance? ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(12.0),
            child: Card(
              child: RichText(
                text:  TextSpan(
                  children: [
                    TextSpan(text: '1.\t It targets a specific group of people.\n', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                    TextSpan(text: '2.\t “The word white creates discomfort among those who are not used to being defined…by their race” (Collins). \n', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))] ),
                    TextSpan(text: '3.\t The word privilege doesn’t seem to belong with middle/lower-class white people (Collins).  \n', style: TextStyle(color: Colors.black,fontSize: 16)),
                  ],
                ),
              ),
            ),
          ),


          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Center(child: Text("What are the aspects of White privilege? ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(12.0),
            child: Card(
              child: RichText(
                text:  TextSpan(
                  children: [
                    TextSpan(text: '1.\tWhite “privilege should be viewed as a build-in advantage, separate from one’s…income or effort” (Collins) \n', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                    TextSpan(text: '2.\t It refers to “systemic advantages given to white people” (Collins)  \n', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))] ),
                    TextSpan(text: '3.\tAnd includes “white people’s lack of awareness that they…[hold] this power” (Collins)   \n', style: TextStyle(color: Colors.black,fontSize: 16)),
                  ],
                ),
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Center(child: Text("“Power of Normal” Examples",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(12.0),
            child: Card(
              child: RichText(
                text:  TextSpan(
                  children: [
                    TextSpan(text: '1.\t“The first-aid kit having ‘flesh-coloured’ Band-Aids that only match the skin tone of white people” (Collins).  \n', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                    TextSpan(text: "\tReflection:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black)),
                    TextSpan(text: " Do you remember when Band-Aid came out with the series of various skin-toned Band-Aids to solve this issue? What are your thoughts on the new Band-Aids? Do you think that help correct racial discrimination in products that we use? How or how not? \n",style: TextStyle(fontSize: 16,color: Colors.black),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                    TextSpan(text: '2.\t “The products that white people need for their hair being in the aisle labeled ‘hair care’ rather than in a smaller, separate section of ‘ethnic hair products’” (Collins). \n', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))] ),
                    TextSpan(text: '3.\t“The grocery store stocking a variety of food options that reflect the cultural traditions of most white people”    \n', style: TextStyle(color: Colors.black,fontSize: 16)),
                  ],
                ),
              ),
            ),
          ),



          //column 2
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:600, width:double.infinity,child: BenefitOfDoubt()),


              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Center(child: Text("“Power of the Benefit of the Doubt” Examples ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
              ),

              SizedBox(height: 10,),

              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                      children: [
                        TextSpan(text: '1.\t“If white people are accused of a crime, they are less likely to be presumed guilty, less likely to be sentenced to death and more likely to be portrayed in a fair, nuanced manner by the media outlets” (Collins).  \n', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        TextSpan(text: "\tActivity #1: Look into the #IfTheyGunnedMeDown campaign \n",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),children: [WidgetSpan(child: SizedBox(height: 30,),),],),
                        TextSpan(text: '2.\t“The personal faults…of white people will likely not be used to later deny opportunities or compassion to people who share their racial identity” (Collins).  \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                      ],
                    ),
                  ),
                ),
              ),


              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Center(child: Text("Effects of this type of White Privilege ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
              ),

              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                      children: [
                        TextSpan(text: '\t“Many racialized people suffer from post-traumatic stress disorder due to intense encounters with the police in which they don’t know if they will make it out uninjured and alive (Collins).   \n', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10,),

              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Center(child: Text("“Power of the Accumulated Power”",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
              ),

          SizedBox(height: 10,),

              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                      children: [
                        TextSpan(text: 'Activity #2 \n', style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        TextSpan(text: "\t“In 2014, the Pew Research Center released a report that revealed the median net worth of a white household was \$141,900; for Black and Hispanic households, that dropped to \$11,000 and \$13,700, respectively” (Collins). For every dollar that a white Canadian makes a person of… \n",style: TextStyle(fontSize: 16,color: Colors.black),children: [WidgetSpan(child: SizedBox(height: 30,),),],),
                        TextSpan(text: '1.\t Hispanic descent makes 68.3¢ \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                        TextSpan(text: '2.\tFilipino descent makes 79.5¢  \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                        TextSpan(text: '3.\tAfrican descent makes 80.4¢  \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                        TextSpan(text: '4.\tWest Asian descent makes 82¢  \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                        TextSpan(text: '5.\tother racialized groups 82.4¢ (WealthSimple).  \n', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        TextSpan(text: '\tHow do you think the net worth of a household and income affect a family? What aspects of life does income affect? \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                      ],
                    ),
                  ),
                ),
              ),
SizedBox(height: 10,),

              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                      children: [
                        TextSpan(text: 'Activity #3 \n', style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        TextSpan(text: "\tThese questions are for everyone (racialized people and White people) \n",style: TextStyle(fontSize: 16,color: Colors.black),children: [WidgetSpan(child: SizedBox(height: 30,),),],),
                        TextSpan(text: '1.\tWhat privileges do you have in your life?  \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                        TextSpan(text: '2.\tHow do you feel about your privileges; before this, did you recognize them as privileges?  \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                        TextSpan(text: '3.\tHow did your family attain these privileges?  \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                        TextSpan(text: '4.\tIs there generational wealth in your family?   \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                        TextSpan(text: '5.\tIf you are able to drive, did your parents pay for your car? Are they paying for your insurance?  \n', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        TextSpan(text: '\tAre your parents in a position to help you buy a house in the future?  \n', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 40,))]),

                        TextSpan(text: '\tReflection: ', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                        TextSpan(text: '\tWhat other examples of White supremacy can you point out in our society? How did people engaged in White supremacy get their message and agendas across? How did they influence people’s ways of thinking? (Hint: If you can’t think of an example, start with the Holocaust.)  \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                      ],
                    ),
                  ),
                ),
              ),



            ],
          ),
        ],

      ),
    ),
    );

  }
}


