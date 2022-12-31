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
import 'package:wrkapp/Audio/unit3Audio/summary1.dart';
import 'package:wrkapp/Audio/unit3Audio/summary2.dart';
import 'package:wrkapp/Audio/unit3Audio/summary3.dart';
import 'package:wrkapp/Audio/unit3Audio/summary4.dart';
import 'package:wrkapp/screens/unitScreens/unit2/section2_oprresion.dart';
import 'package:wrkapp/screens/unitScreens/unit2/section3_whocanbeRacist.dart';
import 'package:wrkapp/screens/unitScreens/unit3/contemp_racism.dart';
import 'package:wrkapp/screens/unitScreens/unit3/timelines/south_asian_people_timeline.dart';
import 'package:wrkapp/screens/unitScreens/unit3/timelines/blackpeople_racism_timeline.dart';
import 'package:wrkapp/screens/unitScreens/unit3/timelines/east_asian_timeline.dart';
import 'package:wrkapp/screens/unitScreens/unit3/timelines/indigenous_racism_timeline.dart';
import 'package:wrkapp/widgets/hyperlink_widget.dart';

import '../../../widgets/Asset_player.dart';
import '../../finalScreens/final_home.dart';
import '../../support_screens/support_home_screen.dart';
import '../../tweetScreen.dart';


class Unit3Main extends StatefulWidget {
  const Unit3Main({Key? key}) : super(key: key);

  @override
  State<Unit3Main> createState() => _Unit3MainState();
}

class _Unit3MainState extends State<Unit3Main> {
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

                                  },
                                ),
                                ElevatedButton(
                                  child: Text('Section 2: Contemporary Racism',style: TextStyle(fontSize: 15)),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ContempRacism()));
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


SizedBox(height: 20,),

              Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                ],),

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
                child: ExpandableText(
                    'Indigenous Ethnocultural Groups: Keep in mind, there are many diverse groups of people within these three ethnocultural groups\n\t1. They are the indigenous (native) people of Canada; the first people to live on this land. \n\t2. The community is comprised of the:  \n\t\t\t\ta. First Nations \n\t\t\t\tb. Metis \n\t\t\t\tc. Inuit peoples (check the “Indigenous Peoples” topic page for more info about each group!) \n',
                    expandText: 'show more',
                    collapseText: 'show less',
                    style: TextStyle(color: Colors.black,fontSize: 16)
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
                      child: Text("Black People",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),
              ),

              SizedBox(height: 20,),



              Container(
                padding: EdgeInsets.all(12.0),
                child: ExpandableText(
                    'Black Ethnocultural Groups: Keep in mind, this is not an extensive list. These are just some of the predominant Black ethnocultural groups in Canada.\n\t\t1. Caribbean  \n\t\t2. Jamaican  \n\t\t3. Ethiopian  \n\t\t4. Trinidadian  \n',
                    expandText: 'show more',
                    collapseText: 'show less',
                    style: TextStyle(color: Colors.black,fontSize: 16)
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

              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(12.0),
                child: ExpandableText(
                    'South Asian Ethnocultural Groups: Keep in mind, this is not an extensive list. These are just some of the predominant South Asian ethnocultural groups in Canada. \n\t\t1. Indian  \n\t\t2. Pakistani \n\t\t3. Bangladeshis   \n\t\t4. Sri Lankan  \n',
                    expandText: 'show more',
                    collapseText: 'show less',
                    style: TextStyle(color: Colors.black,fontSize: 16)
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
                child: ExpandableText(
                    'East Asian Ethnocultural Groups: Keep in mind, this is not an extensive list. These are just some of the predominant East Asian ethnocultural groups in Canada. \n\t\t1. Chinese  \n\t\t2. Japanese \n\t\t3. South Korean   \n\t\t4. North Korean \n',
                    expandText: 'show more',
                    collapseText: 'show less',
                    style: TextStyle(color: Colors.black,fontSize: 16)
                ),
              ),

              Container(child: Center(child: Text("Click Below To Explore Timelines",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),textAlign: TextAlign.center,)),),
SizedBox(height: 30,),


              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>IndigenousTimeline()));
                  },
                  child: Container(
                    width: 500,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    //definition 1
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Timeline of Racism Against Indigenous Peoples in Canada ",style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),
              ),
              SizedBox(height: 20,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BlackPeopleInCanadaRTimeline()));
                  },
                  child: Container(
                    width: 500,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    //definition 1
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Timeline of Racism Against Black People in Canada ",style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),
              ),
              SizedBox(height: 20,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SouthAsianPeopleTimeline()));
                  },
                  child: Container(
                    width: 500,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    //definition 1
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Timeline of South Asian People in Canada ",style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),
              ),
              SizedBox(height: 20,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>EastAsianPeopleTimeline()));
                    },
                    child: Container(
                      width: 500,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      //definition 1
                      child: Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Timeline of East Asian people in Canada ",style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
                      ),),
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


