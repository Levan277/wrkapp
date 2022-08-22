
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:wrkapp/Audio/TopicAudios/OprresionT/personalAT.dart';
import 'package:wrkapp/route/route.dart' as route;
import 'package:wrkapp/screens/TopicScreens/oprression_topic_page.dart';
import 'package:wrkapp/screens/TopicScreens/white_privilege_topic_page.dart';
import 'package:wrkapp/screens/unitScreens/unit1/unit1.dart';
import 'package:wrkapp/screens/unitScreens/unit1/unit1_final_home.dart';
import 'package:wrkapp/screens/unitScreens/unit2/unit2_HOME.dart';
import 'package:wrkapp/screens/unitScreens/unit4/unit4Main.dart';
import '../tweetScreen.dart';

class FinalHome extends StatefulWidget {
  const FinalHome({Key? key}) : super(key: key);

  @override
  State<FinalHome> createState() => _FinalHomeState();
}

class _FinalHomeState extends State<FinalHome> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.pink,
      actions: [
        IconButton(onPressed: (){  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeForum()));}, icon: Icon(Icons.messenger_rounded)),
        IconButton(onPressed: (){}, icon: Icon(Icons.home),),
        IconButton(onPressed: (){
         Navigator.pushNamed(context, route.liveSupportScreen);
        }, icon: Icon(Icons.support_agent_rounded),),
      ],
    ),
      body: SingleChildScrollView(
        child:   Column(
          children: [

            Container(

              color: Colors.pink,
              height: 400,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Explore Units",style: TextStyle(color: Colors.white,fontSize: 42,fontWeight: FontWeight.w500),),

                  Container(

                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(500),
                    ),
                    height: 300,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [

                        //card 1
                        InkWell(

                          child: Container(

                            height: 300,
                            child: SizedBox(
                              height: 350,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40), // if you need this

                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    // image: DecorationImage(
                                    //   image: AssetImage('assets/images/endracism2.jpeg'),
                                    //   fit: BoxFit.fill,
                                    //   scale: 50,
                                    // ),
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.black,
                                  ),

                                  width: 200,
                                  height: 250,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      // Image.asset('assets/images/endracism2.jpeg',fit: BoxFit.contain,
                                      //   height: 200,
                                      //   width: 200,
                                      // ),

                                      Container(
                                        alignment: Alignment.bottomCenter,
                                        width: double.infinity,
                                        height: 30,
                                        color: Colors.white,
                                        child: Text('Unit 1',style: TextStyle(color: Colors.black),),),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(40), bottomLeft: Radius.circular(40)),
                                        ),
                                          width: double.infinity,
                                          height: 60,

                                          child: Flexible(child: Padding(padding: EdgeInsets.all(8), child: Text('Familiarizing Yourself With Racism',style: TextStyle(color: Colors.black),textAlign: TextAlign.center,)))),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Unit1Home()));
                          },
                        ),

                        //card 2

                        InkWell(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Unit2Home()));},
                          child: Container(
                            height: 300,
                            child: SizedBox(
                              height: 350,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40), // if you need this
                                  side: BorderSide(
                                    color: Colors.grey.withOpacity(0.2),
                                    width: 1,
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.black,
                                  ),

                                  width: 200,
                                  height: 250,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      // Image.asset('assets/images/power.jpeg',fit: BoxFit.contain,),
                                      Container(

                                        alignment: Alignment.bottomCenter,
                                        width: double.infinity,
                                        height: 30,
                                        color: Colors.white,
                                        child: Text('Unit 2',style: TextStyle(color: Colors.black),),),
                                      Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(40), bottomLeft: Radius.circular(40)),
                                          ),
                                          width: double.infinity,
                                          height: 60,
                                          child: Flexible(child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Power & Oppression',style: TextStyle(color: Colors.black),textAlign: TextAlign.center,),
                                          ))),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //card 3


                        Container(
                          height: 300,
                          child: SizedBox(
                            height: 350,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40), // if you need this
                                side: BorderSide(
                                  color: Colors.grey.withOpacity(0.2),
                                  width: 1,
                                ),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.black,
                                ),

                                width: 200,
                                height: 250,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    // Image.asset('assets/images/canada_flag.jpeg',fit: BoxFit.contain,),

                                    Container(
                                      alignment: Alignment.bottomCenter,
                                      width: double.infinity,
                                      height: 30,
                                      color: Colors.white,
                                      child: Text('Unit 3',style: TextStyle(color: Colors.black),),),
                                    Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(40), bottomLeft: Radius.circular(40)),
                                        ),
                                        width: double.infinity,
                                        height: 60,
                                        child: Flexible(child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Racism in Canada, The past & The Present',style: TextStyle(color: Colors.black),textAlign: TextAlign.center,),
                                        ))),


                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                        //card 4

                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Unit4Main()));
                          },
                          child: Container(
                            height: 300,
                            child: SizedBox(
                              height: 350,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40), // if you need this
                                  side: BorderSide(
                                    color: Colors.grey.withOpacity(0.2),
                                    width: 1,
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.black,
                                  ),
                                  width: 200,
                                  height: 250,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      // Image.asset('assets/images/privilege.jpeg',fit: BoxFit.contain,),

                                      Container(
                                        alignment: Alignment.bottomCenter,
                                        width: double.infinity,
                                        height: 30,
                                        color: Colors.white,
                                        child: Text('Unit 4',style: TextStyle(color: Colors.black),),),
                                      Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(40), bottomLeft: Radius.circular(40)),
                                          ),
                                          width: double.infinity,
                                          height: 60,
                                          child: Flexible(child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('White Privilege',style: TextStyle(color: Colors.black),textAlign: TextAlign.center,),
                                          ))
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),



                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
            
            Container(
              width: double.infinity,
              height: 250,
              color: Color(0xffFBC70A),
              child: Column(
                children: [
                  Align(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Topics',style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 40,color: Colors.white,
                        ),),
                      ),
                  alignment: Alignment.topLeft,
                  ),
                SizedBox(height: 10,),

                  Container(
                    width: double.infinity,
                    height:150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            // backgroundImage:AssetImage('assets/images/laptop.jpg'),
                            radius: 60,
                            foregroundColor: Colors.orange,
                            child: Text("Racism"),
                          ),
                        ),


                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>WhitePrivilegeTopic()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              // backgroundImage:AssetImage('assets/images/laptop.jpg'),
                              radius: 60,
                              foregroundColor: Colors.orange,
                              child: Text("White Privilege"),
                            ),
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const OppresionTopicPage()));
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              // backgroundImage:AssetImage('assets/images/laptop.jpg'),
                              radius: 60,
                              foregroundColor: Colors.orange,
                              child: Text("Oppression"),
                            ),
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            // backgroundImage:AssetImage('assets/images/laptop.jpg'),
                            radius: 60,
                            foregroundColor: Colors.orange,
                            child: Text("Racism"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.black,
              width: double.infinity,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Have You Ever Experienced",style: TextStyle(color: Colors.white,fontSize: 24),),
                  ),
                  SizedBox(height: 10,),
                  Text("Racism?",style: TextStyle(color: Colors.white,fontSize: 24),),
                   SizedBox(height: 5,),
                  Expanded(child: Image.asset('assets/images/racePoll1.png',)),
                ],
              ),
            ),
            
          Container(
            color: Colors.lightBlueAccent,
            height: 300,
            width:double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Lets Talk About It",style: TextStyle(color: Colors.white,fontSize: 32),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 40,
                    ),
                    SizedBox(width: 10,),
                    Flexible(
                      child: Text("How Do You Respond To Microaggressions?",style: TextStyle(
                        fontSize: 32,fontWeight: FontWeight.bold,
                        
                      ),),
                    ),
                  ],
                )
             
              ],
            ),
          ),
          ],
        ),
      ),
      bottomNavigationBar:  SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
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
      // bottomNavigationBar: CurvedNavigationBar(
      //   // backgroundColor: Color(0xffF7C8D3),
      //   backgroundColor: Colors.lightBlueAccent,
      //   color: Colors.yellow.shade800,
      //   items: [
      //     Icon(Icons.home),
      //     Icon(Icons.message),
      //     Icon(Icons.support_agent_rounded),
      //   ],
      // ),
    );
  }
}


class UnitCard extends StatelessWidget {
   const UnitCard({Key? key, required imgPath, required txt1, required txt2}) : super(key: key);
final String imgPath = "";
final String txt1 = "";
final String txt2 = "";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40), // if you need this
          side: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 1,
          ),
        ),
        child: Container(
          color: Colors.black,
          width: 200,
          height: 200,
          child: Column(
            children: [
              Image.asset(imgPath),
              Text(txt1,style: TextStyle(color: Colors.white),),
              Text(txt2,style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }
}
