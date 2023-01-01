import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:video_player/video_player.dart';
import 'package:wrkapp/screens/unitScreens/unit1/unit1_main.dart';
import 'package:wrkapp/widgets/clipPaths/custom_clip_0.dart';
import 'package:wrkapp/widgets/videoWidgets/asset_video_player.dart';
import 'package:wrkapp/widgets/videoWidgets/chewie_list_widget.dart';

import '../../finalScreens/final_home.dart';
import '../../support_screens/support_home_screen.dart';
import '../../tweetScreen.dart';

class Unit1Home extends StatefulWidget {
  @override
  State<Unit1Home> createState() => _Unit1HomeState();
}

class _Unit1HomeState extends State<Unit1Home> {




  late FlickManager flickManager;
  var _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(videoPlayerController: VideoPlayerController.asset('assets/videos/u1_intro.mp4'),autoPlay: false);
    flickManager.flickControlManager?.pause();
 }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.black,),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: DrawClip2(),
                    child: Container(

                      width: size.width,
                      height: size.height * 0.4,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xff414141), Color(0xff000000)],
                            begin: Alignment.bottomCenter,
                            end: Alignment.bottomRight),
                      ),
                    ),
                  ),
                  ClipPath(
                    clipper: DrawClip(),
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Unit 1:",style: GoogleFonts.montserrat(color: Colors.pink,fontSize: 62),),
                          ),
                          Baseline(
                            baseline: 20,
                              baselineType: TextBaseline.alphabetic,
                              child: Text("Familiarizing\n Yourself With\n Racism",style: GoogleFonts.montserrat(color: Colors.white, fontSize: 22),textAlign: TextAlign.center,))
                        ],
                      ),


                      width: size.width,
                      height: size.height * 0.4,

                    ),
                  ),

                ],
              ),


              // second column of bezel
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
                ),
                child:FlickVideoPlayer(
                  flickManager: flickManager,


                ) ,
              ),
 // Container(
 //   height: 400,
 //   width: double.infinity,
 //   child: Lottie.asset('assets/lottie/thinking2.json',width: 300,height: 300),
 //   // child:Expanded(child: AssetPlayerWidget()),
 // ),

              Container(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:MaterialStateProperty.all(Colors.grey),
                  ),
                  onPressed: (){
                     flickManager.flickControlManager?.pause();
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>UnitsPage()));
                  },
                  child: Text("Explore",style: GoogleFonts.montserrat(color: Colors.black),),
                ),
              )


            ],

          ),
        ),
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
              else{
                _currentIndex = 0;

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
      ),
    );
  }
}

Widget input(String hint, bool pass) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.pink),

    ),
  );
}

class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.80);
    path.cubicTo(size.width / 4, size.height, 3 * size.width / 4,
        size.height / 2, size.width, size.height * 0.8);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class DrawClip2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.08);
    path.cubicTo(size.width / 4, size.height, 3 * size.width / 4,
        size.height / 2, size.width, size.height * 0.9);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}




