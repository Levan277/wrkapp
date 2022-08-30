import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/materiaL.dart';
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


class Unit3Main extends StatelessWidget {
  const Unit3Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width ;
    double height = MediaQuery. of(context). size. height;
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xffF7FFA7),
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Unit 3 | Racism in Canada, The Past & The Present '),
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
                                  child: Text('Section 1: History of Ethnocultural Groups In Canada ',style: TextStyle(fontSize: 15),),
                                  onPressed: () {

                                  },
                                ),
                                ElevatedButton(
                                  child: Text('Section 2: Contempory Racism',style: TextStyle(fontSize: 15)),
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

              SizedBox(height:600, width:double.infinity,child: Summary1U3()),
              SizedBox(height: 25,),
              SizedBox(height:600, width:double.infinity,child: Summary2U3()),
              SizedBox(height: 25,),
              SizedBox(height:600, width:double.infinity,child: Summary3U3()),
              SizedBox(height: 25,),
              SizedBox(height:600, width:double.infinity,child: Summary4U3()),



              Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //image 1
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
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
                  ),
                  //image 2
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
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
                  ),
                ],),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("Indigenous Peoples",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                      children: [
                        TextSpan(text: 'Indigenous Ethnocultural Groups: ', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                        TextSpan(text: 'Keep in mind, there are many diverse groups of people within these three ethnocultural groups\n', style: TextStyle(color: Colors.black,fontSize: 16,),children: [WidgetSpan(child:SizedBox(height: 30,) )]),
                        TextSpan(text: '\t1. They are the indigenous (native) people of Canada; the first people to live on this land. \n', style: TextStyle(color: Colors.black,fontSize: 16,)),
                        TextSpan(text: '\t2. The community is comprised of the:  \n', style: TextStyle(color: Colors.black,fontSize: 16,)),
                        TextSpan(text: '\t\t\t\ta. First Nations \n', style: TextStyle(color: Colors.black,fontSize: 16,)),
                        TextSpan(text: '\t\t\t\tb. Metis \n', style: TextStyle(color: Colors.black,fontSize: 16,)),
                        TextSpan(text: '\t\t\t\tc. Inuit peoples (check the “Indigenous Peoples” topic page for more info about each group!) \n', style: TextStyle(color: Colors.black,fontSize: 16,)),

                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("Black People",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                      children: [
                        TextSpan(text: 'Black Ethnocultural Groups: ', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                        TextSpan(text: ' Keep in mind, this is not an extensive list. These are just some of the predominant Black ethnocultural groups in Canada.\n', style: TextStyle(color: Colors.black,fontSize: 16,),children: [WidgetSpan(child:SizedBox(height: 30,) )]),
                        TextSpan(text: '\t\t1. Caribbean  \n', style: TextStyle(color: Colors.black,fontSize: 16,)),
                        TextSpan(text: '\t\t2. Jamaican  \n', style: TextStyle(color: Colors.black,fontSize: 16,)),
                        TextSpan(text: '\t\t3. Ethiopian  \n', style: TextStyle(color: Colors.black,fontSize: 16,)),
                        TextSpan(text: '\t\t4. Trinidadian  \n', style: TextStyle(color: Colors.black,fontSize: 16,)),

                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("People of South Asian Decent",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                      children: [
                        TextSpan(text: 'South Asian Ethnocultural Groups: ', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                        TextSpan(text: 'Keep in mind, this is not an extensive list. These are just some of the predominant South Asian ethnocultural groups in Canada. \n', style: TextStyle(color: Colors.black,fontSize: 16,),children: [WidgetSpan(child:SizedBox(height: 30,) )]),
                        TextSpan(text: '\t\t1. Indian  \n', style: TextStyle(color: Colors.black,fontSize: 16,)),
                        TextSpan(text: '\t\t2. Pakistani \n', style: TextStyle(color: Colors.black,fontSize: 16,)),
                        TextSpan(text: '\t\t3. Bangladeshis   \n', style: TextStyle(color: Colors.black,fontSize: 16,)),
                        TextSpan(text: '\t\t4. Sri Lankan  \n', style: TextStyle(color: Colors.black,fontSize: 16,)),

                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("People of East Asian Decent",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                      children: [
                        TextSpan(text: 'East Asian Ethnocultural Groups: ', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                        TextSpan(text: 'Keep in mind, this is not an extensive list. These are just some of the predominant East Asian ethnocultural groups in Canada. \n', style: TextStyle(color: Colors.black,fontSize: 16,),children: [WidgetSpan(child:SizedBox(height: 30,) )]),
                        TextSpan(text: '\t\t1. Chinese  \n', style: TextStyle(color: Colors.black,fontSize: 16,)),
                        TextSpan(text: '\t\t2. Japanese \n', style: TextStyle(color: Colors.black,fontSize: 16,)),
                        TextSpan(text: '\t\t3. South Korean   \n', style: TextStyle(color: Colors.black,fontSize: 16,)),
                        TextSpan(text: '\t\t4. North Korean \n', style: TextStyle(color: Colors.black,fontSize: 16,)),

                      ],
                    ),
                  ),
                ),
              ),

              Container(child: Center(child: Text("Click Below To Explore TimeLines",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),textAlign: TextAlign.center,)),),
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
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    //definition 1
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Timeline of Racism Against Indigenous Peoples in Canada ",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
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
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    //definition 1
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Timeline of Racism Against Black People in Canada ",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
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
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    //definition 1
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Timeline of South Asian People in Canada ",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
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
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      //definition 1
                      child: Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Timeline of East Asian people in Canada ",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                      ),),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),




              //
              // Container(
              //   padding: EdgeInsets.all(12.0),
              //   child: Card(
              //     child: RichText(
              //       text:  TextSpan(
              //         children: [
              //           TextSpan(text: 'The power one person has over another. ', style: TextStyle(color: Colors.black,fontSize: 16)),
              //
              //
              //         ],
              //       ),
              //     ),
              //   ),
              // ),

            ],
          ),
        ],

      ),
    ),
    );

  }
}


