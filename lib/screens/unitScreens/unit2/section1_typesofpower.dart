

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/materiaL.dart';
import 'package:wrkapp/Audio/colonization_audio_topic.dart';
import 'package:wrkapp/Audio/unit2_audio/ex_of_individial_pwr_auidio.dart';
import 'package:wrkapp/Audio/unit2_audio/ex_of_institutional_pwr_audio.dart';
import 'package:wrkapp/Audio/unit2_audio/what_is_superiority_audio.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wrkapp/screens/unitScreens/unit2/section2_oprresion.dart';
import 'package:wrkapp/screens/unitScreens/unit2/section3_whocanbeRacist.dart';
import 'package:wrkapp/widgets/hyperlink_widget.dart';


class Unit2Main extends StatelessWidget {
  const Unit2Main({Key? key}) : super(key: key);

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
                    Text("Unit 2: Power ",style: TextStyle(fontSize: 40,color: Colors.white),),
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
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Unit2Main()));
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

              SizedBox(height:600, width:double.infinity,child: ColonizationAudioT()),

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
                child: Text("Two Types of Power",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
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
                    child: Text("Individual Power",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: 'The power one person has over another. ', style: TextStyle(color: Colors.black,fontSize: 16)),


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
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Institutional power",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: 'The power an insitution has over many people. ', style: TextStyle(color: Colors.black,fontSize: 16)),
                        ]
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

              SizedBox(height:height * 0.6, width:double.infinity,child: WISuperiorityAudio()),

              Center(
                child: Padding(padding:
                EdgeInsets.all(12),
                child:   Text('Activity #1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,),) ,
                ),
              ),
              SizedBox(height:height * 0.6, width:double.infinity,child: EOIndividualpwrAud()),
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
                  child: RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(text: 'Before completely the activity below, watch the full interaction between Amy Cooper and Christian Cooper* ', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,),),


                        ]
                    ),
                  ),
                ),

              ),
              Center(child: HyperLinkText(text: 'Link To Video', urlText: 'https://www.youtube.com/watch?v=aPvb_mszKew',)),

SizedBox(height: 10,),

        Container(
        padding: EdgeInsets.all(12.0),
    child: Card(
    child: RichText(
    text: TextSpan(
    children: [
    TextSpan(text: '1. Pay attention to Amy and Christian’s attitudes and physicality (expressions, gestures, body posture) in the situation. How do they differ? \n ', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,),children: [WidgetSpan(child: SizedBox(height: 30,))]),
    
    TextSpan(text: '2. Why do you think Amy reacted the way that she did?  \n ', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,),children: [WidgetSpan(child: SizedBox(height: 30,))]),
    TextSpan(text: '3. What was Christian’s goal in the situation? What was Amy’s?  \n ', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,),children: [WidgetSpan(child: SizedBox(height: 30,))]),
    TextSpan(text: '4. Who had more power in the altercation? How did each of them use their power? What type of power was demonstrated in this situation? \n ', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,),children: [WidgetSpan(child: SizedBox(height: 30,))]),
    TextSpan(text: '5. How is, “I’m going to tell them that there’s an African American man threatening my life” a powerful statement? What baggage does it carry? What does is reflect about society?  \n ', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,),children: [WidgetSpan(child: SizedBox(height: 30,))]),
    TextSpan(text: '6. What do you think could have happened if Christian did not record the interaction? Do you think the power dynamics would have changed? If so, how?  \n ', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,),children: [WidgetSpan(child: SizedBox(height: 30,))]),


    ]
    ),
    ),
    ),

    ),



              SizedBox(height:height * 0.6, width:double.infinity,child: EOInstitutionalpwrAudio()),
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
                  child: RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(text: '1.How is the use of power different in this example to the Amy Cooper/Christian situation?  \n ', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,),children: [WidgetSpan(child: SizedBox(height: 30,))]),

                          TextSpan(text: '2. In the Amy Cooper/Christian altercation, Christian had some power as he was able to film Amy. Why would it have been harder for the Indigenous people to gain power in their situation?   \n ', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        ]
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


