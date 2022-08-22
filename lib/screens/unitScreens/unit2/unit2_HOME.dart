import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:wrkapp/screens/unitScreens/unit1/unit1_main.dart';
import 'package:wrkapp/screens/unitScreens/unit2/section1_typesofpower.dart';
import 'package:wrkapp/widgets/clipPaths/custom_clip_0.dart';
import 'package:wrkapp/widgets/videoWidgets/asset_video_player.dart';
import 'package:wrkapp/widgets/videoWidgets/chewie_list_widget.dart';

class Unit2Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink,
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
                            child: Text("Unit 2:",style: TextStyle(color: Colors.pink,fontSize: 62),),
                          ),
                          Baseline(
                              baseline: 20,
                              baselineType: TextBaseline.alphabetic,
                              child: Text("Power & Oppression",style: TextStyle(color: Colors.white, fontSize: 24),textAlign: TextAlign.center,))
                        ],
                      ),


                      width: size.width,
                      height: size.height * 0.4,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xff414141), Color(0xff000000)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                    ),
                  ),

                ],
              ),

              // second column of bezel
              Container(
                height: 600,
                width: double.infinity,
                child: ChewieListItem(videoPlayerController:
                VideoPlayerController.asset('assets/videos/cake.mp4'),
                  looping: true,
                ),
                // child:Expanded(child: AssetPlayerWidget()),
              ),

              Container(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Unit2Main()));
                  },
                  child: Text("Click",style: TextStyle(color: Colors.white),),
                ),
              )


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