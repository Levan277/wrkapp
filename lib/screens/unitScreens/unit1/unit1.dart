import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:wrkapp/route/route.dart' as route;
import 'package:animated_button/animated_button.dart';


class Unit1 extends StatelessWidget {
  const Unit1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery. of(context). size. height;
    double width = MediaQuery. of(context). size. width ;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Unit 1: Familiarizing Yourself With Racism',style: TextStyle(
            fontSize: 18
          ),),
          actions: [
           Icon(Icons.arrow_back),
          ],
        ),

        body:ListView(
          children: [

            Column(
              children: [
                Image.asset('assets/images/race1.jpg'),

                Row(
                  children: [
                    
                    Flexible(child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text("In this unit participants will learn to identify different forms of racism using vocabulary from the racism spectrum. ",style:
                      GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 18,color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Lottie.network('https://assets4.lottiefiles.com/packages/lf20_sokznsry.json'),
                      ),
                    ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [

                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Lottie.network('https://assets9.lottiefiles.com/temp/lf20_1BAmUO.json'),
                      ),
                    )
                    ),

                    Flexible(child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Participants will be given the opportunity to engage with different meaningful conversations and share their own experiences. ", style:
                      GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 18,color: Colors.white),
                      ),
                    ),
                    ),


                  ],
                ),

                SizedBox(height: 10,),

                Row(
                  children: [

                    Flexible(child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("The activities will allow participants to broaden their own perspectives. ",style:
                      GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 18,color: Colors.white),
                      ),
                    ),
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(child: Lottie.network('https://assets2.lottiefiles.com/packages/lf20_bltsnbfe.json'),),
                    )
                    ),
                  ],
                ),

              const  SizedBox(height: 10,),

                Row(
                  children: [
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Lottie.network('https://assets8.lottiefiles.com/private_files/lf30_zbpc9rcf.json'),
                      ),
                    )
                    ),
                  
                    Flexible(child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("This unit will apply learning to real life situations and context as well as experiences that participants have faced. ",style:
                      GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 18,color: Colors.white),
                      ),
                    ),
                    ),

                  ],
                ),



                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: AnimatedButton(
                    color: Colors.yellow,
                    onPressed: () {},
                    enabled: true,
                    shadowDegree: ShadowDegree.light,
                    child:  Container(
                      child: Column(
                        children:  [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:  Text(
                              ' TOPIC 1',
                              style: TextStyle(

                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text('Definitions',style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              const  SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: AnimatedButton(
                    color: Colors.yellow,
                    onPressed: () {},
                    enabled: true,
                    shadowDegree: ShadowDegree.light,
                    child:  Container(
                      child: Column(
                        children:  [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              ' TOPIC 2',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text('Racism Spectrum',style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                          )),
                        ],
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

class MyBullet extends StatelessWidget {
  const MyBullet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return new Container(
      height: 10.0,
      width: 15.0,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}


