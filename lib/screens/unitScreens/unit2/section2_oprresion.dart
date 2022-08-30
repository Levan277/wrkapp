
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/materiaL.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wrkapp/Audio/summary_of_units.dart';
import 'package:wrkapp/Audio/unit2_audio/ex_of_individial_pwr_auidio.dart';
import 'package:wrkapp/Audio/unit2_audio/ex_of_institutional_pwr_audio.dart';
import 'package:wrkapp/Audio/unit2_audio/oppression_audio.dart';
import 'package:wrkapp/Audio/unit2_audio/what_is_superiority_audio.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wrkapp/screens/unitScreens/unit2/section1_typesofpower.dart';
import 'package:wrkapp/screens/unitScreens/unit2/section3_whocanbeRacist.dart';
import 'package:wrkapp/widgets/hyperlink_widget.dart';


class Section2Oppresion extends StatelessWidget {
  const Section2Oppresion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width ;
    double height = MediaQuery. of(context). size. height;
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xffF7FFA7),
      appBar: AppBar(
        title:  Text('Unit 2: Power & Oppresion'),
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
                                  child: Text('Section 2: Oprresion',style: GoogleFonts.montserrat(fontSize: 15)),
                                  onPressed: () {},
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

              SizedBox(height:700, width:double.infinity,child: OppresionAudio()),

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
                child: Text("The 4 Levels of Oppresion",style: GoogleFonts.montserrat(fontSize: 32,fontWeight: FontWeight.bold),),
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
                    child: Text("Personal",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                      children: [
                        TextSpan(text: 'Is “associated with our values, beliefs and feelings about individuals different from us” (Pizaña) \n', style: GoogleFonts.montserrat(color: Colors.black,fontSize: 16)),
                        TextSpan(text: '   Example - Racism: believing that one racial group is smarter than another.', style: GoogleFonts.montserrat(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
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
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
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
                    child: Text("Interpersonal",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: 'Interpersonal means “relating to relationships or communication between people” (Oxford Dictionaries). \n', style: GoogleFonts.montserrat(color: Colors.black,fontSize: 16)),
                          TextSpan(text: '“So, interpersonal oppression focuses on “our actions, behaviour and language as we interact with individuals different from us” \n', style: TextStyle(color: Colors.black,fontSize: 16)),
                          TextSpan(text: '   Example -  Racism: racist jokes, use of racial slurs, harassment, stereotyping ', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
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
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),
                ],
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
                    child: Text("Institutional",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: 'Includes “the rules, policies, procedures and practices…within an institution that define who…can fully participate or those that may be excluded” (Pizaña).\n', style: TextStyle(color: Colors.black,fontSize: 16)),
                          TextSpan(text: '   Example - Racism: A company refusing to hire someone because of their hairstyle or religious clothing ', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),

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
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),
                ],
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
                    child: Text("Cultural",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: 'Is “how we define what is right, normal, the truth or beautiful” \n', style: TextStyle(color: Colors.black,fontSize: 16)),
                          TextSpan(text: '   Example - Racism: “The cultural narrative that White folks are safer, less violent, and better citizens”  ', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),

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
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),
                ],
              ),
              SizedBox(height: 20,),



              Center(
                child: Padding(padding:
                EdgeInsets.all(12),
                  child:   Text('Definitions',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,),) ,
                ),
              ),


              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 200,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("Agents of oppression ",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: '“Are members of the dominant social groups” that are privileged [in comparison to targets of oppression]”. ', style: TextStyle(color: Colors.black,fontSize: 16)),
                          TextSpan(text: ' (Vanderbilt University)\n', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                          TextSpan(text: '   Example-  A White person going through customs without having to worry about being racially profiled and stopped at the boarder because of their race.” ', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),

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
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),
                ],
              ),




SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 180,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Targets of oppression ",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: '“Are members of social identity groups that are” denied the right to vote, “exploited, and victimized, by agents of oppression” ', style: TextStyle(color: Colors.black,fontSize: 16)),
                          TextSpan(text: ' (Vanderbilt University).\n', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                          TextSpan(text: '   Example- Racialized groups like Black and Indigenous people are more likely to be incarcerated. ', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),

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
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),
                ],
              ),

SizedBox(height: 10,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 180,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Internalized Oppression ",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: 'Is the process in which “people in the target group make oppression…personal” by believing the “lies, prejudices, and stereotypes” to be the truth. ', style: TextStyle(color: Colors.black,fontSize: 16)),
                          TextSpan(text: ' (Vanderbilt University).\n', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                          TextSpan(text: 'Effects of internalized oppression include ', style: TextStyle(color: Colors.black,fontSize: 16)),
                          TextSpan(text: 'Low self-esteem, Self-doubt, Self-loathing ', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
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
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),
                ],
              ),





            ],
          ),
        ],

      ),
    ),
    );

  }
}


