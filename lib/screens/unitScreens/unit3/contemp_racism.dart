import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/materiaL.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:wrkapp/Audio/summary_of_units.dart';
import 'package:wrkapp/Audio/unit2_audio/ex_of_individial_pwr_auidio.dart';
import 'package:wrkapp/Audio/unit2_audio/ex_of_institutional_pwr_audio.dart';
import 'package:wrkapp/Audio/unit2_audio/what_is_superiority_audio.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wrkapp/Audio/unit3Audio/black_ppl_edu_system.dart';
import 'package:wrkapp/Audio/unit3Audio/lack_of_housing_audio.dart';
import 'package:wrkapp/Audio/unit3Audio/model_minority_myth.dart';
import 'package:wrkapp/screens/unitScreens/unit2/section2_oprresion.dart';
import 'package:wrkapp/screens/unitScreens/unit2/section3_whocanbeRacist.dart';
import 'package:wrkapp/screens/unitScreens/unit3/timelines/south_asian_people_timeline.dart';
import 'package:wrkapp/screens/unitScreens/unit3/timelines/blackpeople_racism_timeline.dart';
import 'package:wrkapp/screens/unitScreens/unit3/timelines/east_asian_timeline.dart';
import 'package:wrkapp/screens/unitScreens/unit3/timelines/indigenous_racism_timeline.dart';
import 'package:wrkapp/screens/unitScreens/unit3/unit3Main.dart';
import 'package:wrkapp/widgets/hyperlink_widget.dart';

import '../../../Audio/unit3Audio/lack_of_ack_anti_racism_south_asian.dart';
import '../../../widgets/Asset_player.dart';
import '../../finalScreens/final_home.dart';
import '../../support_screens/support_home_screen.dart';
import '../../tweetScreen.dart';


class ContempRacism extends StatefulWidget {
  const ContempRacism({Key? key}) : super(key: key);

  @override
  State<ContempRacism> createState() => _ContempRacismState();
}

class _ContempRacismState extends State<ContempRacism> {
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
      appBar:

      AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Unit 3 | Racism in Canada',style: TextStyle(color: Colors.black),),
        centerTitle: true,

      ),

      body: ListView(
        children: [
          Column(
            children: [

              Container(
                width: double.infinity,
                height: 100,
                color: Colors.yellow,
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
                                  child: Text('Section 1: History of Ethnocultural Groups In Canada ',style: TextStyle(fontSize: 15),),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Unit3Main()));
                                  },
                                ),
                                ElevatedButton(
                                  child: Text('Section 2: Contempory Racism',style: TextStyle(fontSize: 15)),
                                  onPressed: () {

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


              Padding(
                padding: EdgeInsets.all(12),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Indigenous Peoples",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),
              ),

              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:

                  ExpandableText(
                      'There are many systems in place that affect the well-being of Indigenous peoples today (many of which you will get to explore in just a moment). One of the issues facing Indigenous peoples is the lack of affordable and suitable housing. \n',
                      expandText: 'show more',
                      collapseText: 'show less',
                      style: TextStyle(color: Colors.black,fontSize: 16)
                  ),



                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Indigenous Lack of Suitable Housing",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),
              ),
              // SizedBox(height:700, width:double.infinity,child: LackOfHousingA()),
              AssetPlayerWidget(asset: 'assets/u3_sec2_indig_lackofhousing.mp3', description: ''),

              Container(
                padding: EdgeInsets.all(12.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:

                  ExpandableText(
                      'Activity:Look into one issue surrounding Indigenous People that you don’t know much about and share your findings with someone else. \n\tTopic Examples: \n\t\t\t1. Inadequate living situations in Indigenous communities \n\t\t\t2.High levels of incarceration  \n\t\t\t3. Higher rates of suicide and child/youth deaths  \n\t\t\t4. Lack of access to quality education  \n\t\t\t5. Poverty (leading to issues such as poorer health)   \n\t\t\t6. Crisis of missing Indigenous women    \n',
                      expandText: 'show more',
                      collapseText: 'show less',
                      style: TextStyle(color: Colors.black,fontSize: 16)
                  ),



                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("People of African Decent ",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),
              ),


              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:

                  ExpandableText(
                      'Like the Indigenous population, the Black population is also overrepresented in the justice system and are 4 times as likely to be racially profiled by police (Black and Indigenous people in Montreal) (Sheppard, Thermitus and Jones). \n',
                      expandText: 'show more',
                      collapseText: 'show less',
                      style: TextStyle(color: Colors.black,fontSize: 16)
                  ),


                ),
              ),

              Padding(
                padding: EdgeInsets.all(12),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Black People in The Education System",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),
              ),
              AssetPlayerWidget(asset: 'assets/u3_sec2_black_in_education_system.mp3', description: ''),
              // SizedBox(height:700, width:double.infinity,child: BlackPeopleEduA()),

              Container(
                padding: EdgeInsets.all(12.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:


                  ExpandableText(
                      'Activity:Look into one issue surrounding Black people that you don’t know much about and share your findings with someone else.  \n\tTopic Examples: \n\t\t\t1. The Race Riot at Cole Harbour District High School \n\t\t\t2. The Voice of the Fugitive, a magazine created by Mary and Henry Bibb to combat racism in Canada & America  \n\t\t\t3. Segregated schools  \n\t\t\t4. Discrimination against Black people in education   \n\t\t\t5. Police brutality in Canada (ex. you can start with these names: Jermaine Carby and Nicholas Gibbs)    \n\t\t\t6. Portray of Black people in media (ex. news, TV)     \n',
                      expandText: 'show more',
                      collapseText: 'show less',
                      style: TextStyle(color: Colors.black,fontSize: 16)
                  ),


                ),
              ),

              Padding(
                padding: EdgeInsets.all(12),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("People of South Asian Decent",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:

                    ExpandableText(
                        'Much like people of East Asian Descent, people of South Asian Descent have had to deal with the ramifications of racist policies and immigration laws that barred them from freely living in Canada.   \n',
                        expandText: 'show more',
                        collapseText: 'show less',
                        style: TextStyle(color: Colors.black,fontSize: 16)
                    ),


                  ),
                ),
              ),
              //
              // SizedBox(height:700, width:double.infinity,child: LackOfAckAntiSouthRacism()),
              Padding(
                padding: EdgeInsets.all(12),
                child: Center(
                  child: Container(
                    width: 250,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("The Lack of Ackknowledgment of Anti-South Asian Racism",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),
              ),
              AssetPlayerWidget(asset: 'assets/u3_sec2_lack_of_ack_anti_south_asian_racism.mp3', description: ''),

              Container(
                padding: EdgeInsets.all(12.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:


                  ExpandableText(
                      'Activity: Look into one issue surrounding South Asian people that you don’t know much about and share your findings with someone else. \n'
                          '\tTopic Examples: \n'
                          '\t\t\t1. Discrimination against South Asian people during COVID-19 pandemic \n\n'
                          '\t\t\t2. Racism against people of South Asian descent in education  \n\n'
                          '\t\t\t3. Discrimination in immigration process (especially for women)   \n\n'
                          '\t\t\t4. Lack of media coverage on South Asian people    \n\n',

                      expandText: 'show more',
                      collapseText: 'show less',
                      style: TextStyle(color: Colors.black,fontSize: 16)
                  ),


                ),
              ),

              Padding(
                padding: EdgeInsets.all(12),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("People of East Asian Decent",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),
              ),

              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text:  TextSpan(
                      children: [
                        TextSpan(text: ' Like other ethnocultural groups in Canada, people of East Asian decent continue to face discrimination and racism. \n', style: TextStyle(color: Colors.black,fontSize: 16,),children: [WidgetSpan(child:SizedBox(height: 30,) )]),


                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(12),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("The Model Minority Myth",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),
              ),
              AssetPlayerWidget(asset: 'assets/u3_sec2_model_minority_myth.mp3', description: ''),

              // SizedBox(height:700, width:double.infinity,child: ModelMinorityMyth()),


              Container(
                padding: EdgeInsets.all(12.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:


                  ExpandableText(
                      'Activity: Look into one issue surrounding East Asian people that you don’t know much about and share your findings with someone else.  \n'
                          '\tTopic Examples: \n\n'
                          '\t\t\t1. Hate crimes against East Asian people  \n\n'
                          '\t\t\t2. Pay differences between Asian and white Canadians    \n\n'
                          '\t\t\t3. Discrimination of Asian Canadians during the COVID-19 pandemic \n \n'
                          '\t\t\t4. Internment of people of Japanese people (Japanese Canadians held at Hastings Park) \n  \n',
                      expandText: 'show more',
                      collapseText: 'show less',
                      style: TextStyle(color: Colors.black,fontSize: 16)
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


