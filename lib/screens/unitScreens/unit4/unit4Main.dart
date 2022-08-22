

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/materiaL.dart';
import 'package:wrkapp/Audio/TopicAudios/whitePrivilegeT/power_accumulated.dart';
import 'package:wrkapp/Audio/colonization_audio_topic.dart';
import 'package:wrkapp/Audio/unit2_audio/ex_of_individial_pwr_auidio.dart';
import 'package:wrkapp/Audio/unit2_audio/ex_of_institutional_pwr_audio.dart';
import 'package:wrkapp/Audio/unit2_audio/what_is_superiority_audio.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wrkapp/Audio/unit4_audio/summary_audio.dart';
import 'package:wrkapp/screens/unitScreens/unit2/section2_oprresion.dart';
import 'package:wrkapp/screens/unitScreens/unit2/section3_whocanbeRacist.dart';
import 'package:wrkapp/widgets/hyperlink_widget.dart';


class Unit4Main extends StatelessWidget {
  const Unit4Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width ;
    double height = MediaQuery. of(context). size. height;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        actions: [Icon(Icons.support_agent_rounded)],
      ),
      body: ListView(
        children: [
          Column(
            children: [

              Container(
                width: double.infinity,
                height: 200,
                color: Colors.pinkAccent,
                child: Column(
                  children: [
                    Text("Unit 4: White Privilege ",style: TextStyle(fontSize: 40,color: Colors.white),),
                    SizedBox(height: 20,),
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
                                  child: Text('Section 1: Types of Power',style: TextStyle(fontSize: 15),),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Unit4Main()));
                                  },
                                ),
                                ElevatedButton(
                                  child: Text('Section 2: Oprresion',style: TextStyle(fontSize: 15)),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Section2Oppresion()));
                                  },
                                ),
                                ElevatedButton(
                                  child: Text('Section 3: Who Can Be Racist?',style: TextStyle(fontSize: 15)),
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

              SizedBox(height:600, width:double.infinity,child: SummaryU4()),

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
                child: Text("What Isn’t White Privilege? ",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),

              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                      children: [
                        TextSpan(text: '\t1. White privilege is not “the suggestion that white people have never struggled” (Collins). .\n ', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        TextSpan(text: '\t2. White privilege is not “the assumption that everything a white person has accomplished is unearned” (Collins). ', style: TextStyle(color: Colors.black,fontSize: 16)),

                      ],
                    ),
                  ),
                ),
              ),



              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("What is White Privilege?  ",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),

              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                      children: [
                        TextSpan(text: '\t1. White Privilege – “is having greater access to power and resources than people of color [in the same situation] do” \n ', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        TextSpan(text: '\t2. A different race based on the belief that one’s own race is superior.”  When someone believes that their race—which remember is a social construct that has no grounds in biology—is better than someone else’s, that person will always view themselves as more powerful, no matter what the situation is.  ', style: TextStyle(color: Colors.black,fontSize: 16)),

                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: null,
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: null,
                  ),
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
                    child: Text("Power of Normal",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                      children: [
                        TextSpan(text: '\t1. “Power of Normal” – is addressing smaller, more trivial issues surrounding White privilege such as Band-aid colours,Hair products for all hair types and Lack of foods from other cultures in grocery stores    \n ', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        TextSpan(text: '\t2. These are issues that tend to get more attention than larger issues that have a greater effect on people from that race.  Visit the ', style: TextStyle(color: Colors.black,fontSize: 16)),
                        TextSpan(text: '“White Privilege” ', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                        TextSpan(text: 'topics page for a deeper look into these examples.  ', style: TextStyle(color: Colors.black,fontSize: 16)),

                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("So, what’s the problem?  ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              ),
SizedBox(height: 10,),


              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                      children: [
                        TextSpan(text: 'The problem is “if public spaces and goods seem catered to one race” it sends the message that those things are normal and anything different is not. ', style: TextStyle(color: Colors.black,fontSize: 16)),

                      ],
                    ),
                  ),
                ),
              ),


              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("“Power of the Benefit of the Doubt” ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              ),

              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                      children: [
                        TextSpan(text: '“Power of the Benefit of the Doubt” – relates to the fact that white people are more likely to be viewed in a positive light than non-white people. \nWhite people tend to be “treated as individuals, rather than as representatives of (or exceptions to) a stereotyped racial identity”.\n   ', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        TextSpan(text: 'Example - “White people are less likely to be followed, interrogated or search by law enforcement because they look ‘suspicious’” (Collins). ', style: TextStyle(color: Colors.black,fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10,),



              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: null,
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: null,
                  ),
                ],
              ),


              SizedBox(height: 20,),
              SizedBox(height:600, width:double.infinity,child: PowerOfAccum()),

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


