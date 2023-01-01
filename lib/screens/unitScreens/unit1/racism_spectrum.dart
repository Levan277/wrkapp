import 'package:expandable_text/expandable_text.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/materiaL.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:video_player/video_player.dart';
import 'package:wrkapp/Audio/u1_sec1_summary_audio.dart';
import 'package:wrkapp/Audio/u1_sec2_summary.dart';
import 'package:wrkapp/route/route.dart';
import 'package:wrkapp/screens/finalScreens/final_home.dart';
import 'package:wrkapp/screens/support_screens/support_home_screen.dart';
import 'package:wrkapp/screens/tweetScreen.dart';
import 'package:wrkapp/screens/unitScreens/unit1/unit1_main.dart';
import 'package:wrkapp/widgets/Asset_player.dart';

import '../unit3/contemp_racism.dart';


class RacismSpectrum extends StatefulWidget {
  const RacismSpectrum({Key? key}) : super(key: key);

  @override
  State<RacismSpectrum> createState() => _RacismSpectrumState();
}

class _RacismSpectrumState extends State<RacismSpectrum> with SingleTickerProviderStateMixin {
  late FlickManager flickManager;
  var _currentIndex = 0;
  late TransformationController controller;
  late AnimationController animationController;
  Animation<Matrix4>? animation;
  @override
  void initState() {

    super.initState();
    controller = TransformationController();
    animationController = AnimationController(vsync: this,
    duration: Duration(milliseconds: 200),
    )..addListener(() =>controller.value = animation!.value);
    flickManager = FlickManager(videoPlayerController: VideoPlayerController.asset('assets/videos/u1_s2.mp4'),autoPlay: false);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    animationController.dispose();

    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back), onPressed: () {
          flickManager.flickControlManager?.pause();
          Navigator.pop(context);

        },
        ),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: Text("Unit 1"),
        actions: [],
      ),
      body: ListView(
        children: [
          Column(
            children: [

              Container(
                height: 100,
                width: double.infinity,

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
                                  child: Text('Section 1: Basic Definitions ',style: GoogleFonts.montserrat(fontSize: 15),),
                                  onPressed: () {
                                    flickManager.flickControlManager?.pause();
                                       Navigator.push(context, MaterialPageRoute(builder: (context)=>UnitsPage()));
                                  },
                                ),
                                ElevatedButton(
                                  child: Text('Section 2: Racism Spectrum',style: GoogleFonts.montserrat(fontSize: 15)),
                                  onPressed: () {
                                    flickManager.flickControlManager?.pause();

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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
                ),
                child:FlickVideoPlayer(
                  flickManager: flickManager,


                ) ,
              ),
              // AssetPlayerWidget(asset: 'assets/u1_sec2_summary.mp3', description: 'Section 2: Summary',),
              // SizedBox(height:700, width:double.infinity,child: Unit1Sec2Summary()),
SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Image.asset('assets/images/u1sec2.jpg')),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  //definition 1
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Activity #1",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 20),),
                  ),),
                ),
              ),
              Container(

                padding: EdgeInsets.all(12.0),
                child:ExpandableText(
                  'Looking at the following chart, take note of what forms of racism you, your family and/or friends have experienced, and what types of racism you have participated in. Then ask yourself these questions:',
                  expandText: 'show more',
                  collapseText: 'show less',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)

              ),



              ),

              Container(

                padding: EdgeInsets.all(12.0),
                child:ExpandableText(
                        '1.)Which forms of racism have you heard about?\n\n2.) What haven’t you heard about?\n\n3.) Were there acts of racism that you didn’t know were racist?\n\n4.) If so, what were they? ',
                    expandText: 'show more',
                    collapseText: 'show less',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)

                ),



              ),
              SizedBox(height: 10,),
              Center(child: InteractiveViewer(
                  clipBehavior: Clip.none,
                  minScale: 1,
                  maxScale: 4,
                  onInteractionEnd: (details){
                    resetAnimation();
                  },
                  child: Image.asset('assets/images/racism_spec.jpg')),heightFactor: 1.5,),

              //definition 2
              SizedBox(height: 40,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Activity #2",style: TextStyle(color: Colors.black,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Text('Looking at the scale below, determine where you fall on the scale. After doing so, consider the following questions: (be honest!) ',style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold,

                ),),
              ),
       Container(
         padding: EdgeInsets.all(8.0),
         child:

         ExpandableText(
             '1.)Where are you on each scale right now?\n\n'
                 '2.)Why do you think you fall there?\n\n'
                 '3.) What things in your life do you think has contributed to where you fall on the scale at this moment in your life?\n\n'
                 '4.) Have you been in other places on this scale throughout your life?\n\n '
                 '5.)If so, where? Why? What things in your past do you think contributed to where you fell on the scale before?\n\n'
                 '6.)Do you like where you are on the scale right now? Why or why not?\n\n'
                 '7.) If you are unhappy with where you are on the scale right now, where would you wish you were?\n\n '
                 '8.)How do you think you would achieve moving places on the scale?\n\n'
                 '9.) If you are unhappy with where you are on the scale right now, where would you wish you were? How do you think you would achieve moving places on the scale?\n\n'
                 '10.) Where do you think is a healthy place to be on the scale? Why?\n\n'
                 '11.)Where do you think the people you surround yourself with (i.e., friends, family) are on the scale? \n\n',
             expandText: 'show more',
             collapseText: 'show less',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)

         ),

       ),

              SizedBox(height: 10,),
              Center(child: InteractiveViewer(
                  clipBehavior: Clip.none,
                  minScale: 1,
                  maxScale: 4,
                  onInteractionEnd: (details){
                    resetAnimation();
                  },

                  child: Image.asset('assets/images/racism_fall.jpg')),heightFactor: 1.0,),


//definition 3








            ],
          )
        ],

      ),
    ),
    );

  }

  void resetAnimation(){
    animation = Matrix4Tween(
      begin: controller.value,
      end: Matrix4.identity(),
    ).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeIn)
    );

    animationController.forward(from: 0);

  }
}

