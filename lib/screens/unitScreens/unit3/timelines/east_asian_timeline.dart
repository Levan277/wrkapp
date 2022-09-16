import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../finalScreens/final_home.dart';
import '../../../support_screens/support_home_screen.dart';
import '../../../tweetScreen.dart';

class EastAsianPeopleTimeline extends StatefulWidget {
  const EastAsianPeopleTimeline({Key? key}) : super(key: key);

  @override
  State<EastAsianPeopleTimeline> createState() => _EastAsianPeopleTimelineState();
}

class _EastAsianPeopleTimelineState extends State<EastAsianPeopleTimeline> {
  List<bool> isVisible = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false];
  var _currentIndex = 0;
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text(''),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Timeline of East Asian People in Canada ",style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 200,
                child: Lottie.asset('assets/lottie/alarm-clock.json'),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[0] == false)
                      isVisible[0] = true;
                    else if(isVisible[0] == true){
                      isVisible[0] = false;
                    }
                  });
                }, child: Text('1788',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),



              Row(
                children: [

                  Visibility(
                    visible: isVisible[0],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: RichText(text:
                            TextSpan(children: [
                              TextSpan(text: '1788\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\tThe first Chinese settlers arrive in Canada  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                              TextSpan(text: '\t\t They came “to help build a trading post and encourage trade” (Canadian Encyclopedia). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),

                            ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 200,
                      height: 300,
                      child:  Image(image: AssetImage('assets/images/unit3images/1788e.jpg')),

                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[1] == false)
                      isVisible[1] = true;
                    else if(isVisible[1] == true){
                      isVisible[1] = false;
                    }
                  });
                }, child: Text('1872',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/voting-transformed.jpeg')),
                    ),
                  ),
                  Visibility(
                    visible: isVisible[1],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 600,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: RichText(text:
                            TextSpan(children: [
                              TextSpan(text: '1872\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\tOn May 1st, Chinese Canadians were banned from voting in BC \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                              TextSpan(text: '\t\tBefore, Chinese man were allowed to vote provincially (Canadian Encyclopedia).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[2] == false)
                      isVisible[2] = true;
                    else if(isVisible[2] == true){
                      isVisible[2] = false;
                    }
                  });
                }, child: Text('1885',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),


              Row(
                children: [

                  Visibility(
                    visible: isVisible[2],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: RichText(text:
                            TextSpan(children: [
                              TextSpan(text: '1885  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\t “Chinese labourers completed the British Columbia section of the Canadian Pacific Railway”   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                              TextSpan(text: '\t\tHundreds of workers died under terrible working conditions (Canadian Encyclopedia).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                              TextSpan(text: '\t\tChinese Head Tax was established \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                              TextSpan(text: '\t\tThey were the only ethnocultural group forced to pay such a fee (Canadian Encyclopedia).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1885e.jpg')),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[3] == false)
                      isVisible[3] = true;
                    else if(isVisible[3] == true){
                      isVisible[3] = false;
                    }
                  });
                }, child: Text('1895',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child:Image(image: AssetImage('assets/images/unit3images/1895e.jpg')),
                    ),
                  ),

                  Visibility(
                    visible: isVisible[3],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 500,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: RichText(text:
                            TextSpan(children: [
                              TextSpan(text: '1895  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\tJapanese Canadians are banned from voting in BC  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                              TextSpan(text: '\t\tThis is due to amendments of the Provincial Voters’ Act (Canadian Encyclopedia). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[4] == false)
                      isVisible[4] = true;
                    else if(isVisible[4] == true){
                      isVisible[4] = false;
                    }
                  });
                }, child: Text('1898',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),


              Row(
                children: [


                  Visibility(
                    visible: isVisible[4],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 500,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: RichText(text:
                            TextSpan(children: [
                              TextSpan(text: '1898\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\tProvinces are given the power to decide who is allowed to vote   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                              TextSpan(text: '\t\tSome provinces “exclude Chinese Canadians”, Though, Chinese Canadians are allowed to vote in federal elections (Canadian Encyclopedia). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1898e.jpg')),
                    ),
                  ),
                ],
              ),


              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[5] == false)
                      isVisible[5] = true;
                    else if(isVisible[5] == true){
                      isVisible[5] = false;
                    }
                  });
                }, child: Text('1902',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),


              Row(
                children: [

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 500,
                        child: Image(image: AssetImage('assets/images/unit3images/1902e.jpg')),
                    ),
                  ),
                  Visibility(
                    visible: isVisible[5],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 1000,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: RichText(text:
                            TextSpan(children: [
                              TextSpan(text: '1902 \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\tA Royal Commission is appointed on Chinese and Japanese Immigration.  It “concluded that…Asians were ‘unfit for full citizenship…and dangerous to the state’” (Canadian Encyclopedia).   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[6] == false)
                      isVisible[6] = true;
                    else if(isVisible[6] == true){
                      isVisible[6] = false;
                    }
                  });
                }, child: Text('1903',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [


                  Visibility(
                    visible: isVisible[6],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 480,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: RichText(text:
                            TextSpan(children: [
                              TextSpan(text: '1903\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\tChinese Head Tax is increased (Canadian Encyclopedia), Now the fee was \$500 \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                              TextSpan(text: '\t\tPoll: How much do you think \$500 then would be now?   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                              TextSpan(text: '\t\t\tA.) \$6,000 \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                              TextSpan(text: '\t\t\tB.) \$12,000 \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                              TextSpan(text: '\t\t\tB.) \$14,000 (Correct answer) (South Asian Canadian Heritage).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),

                            ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),


                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1903e.jpg')),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[7] == false)
                      isVisible[7] = true;
                    else if(isVisible[7] == true){
                      isVisible[7] = false;
                    }
                  });
                }, child: Text('1904',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1904e.jpg')),
                    ),
                  ),

                  Visibility(
                    visible: isVisible[7],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 450,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: RichText(text:
                            TextSpan(children: [
                              TextSpan(text: '1904\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\tBC was unsuccessful in passing an Act that would prevent “Chinese immigration to that province” (Canadian Encyclopedia).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),


              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[8] == false)
                      isVisible[8] = true;
                    else if(isVisible[8] == true){
                      isVisible[8] = false;
                    }
                  });
                }, child: Text('1920',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [


                  Visibility(
                    visible: isVisible[8],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 550,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: RichText(text:
                            TextSpan(children: [
                              TextSpan(text: '1920\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\t“The Dominion Elections Act enfranchised…those who had been disenfranchised during” WWI (Canadian Encyclopedia).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                              TextSpan(text: '\t\tEnfranchise means to give the right to vote. Though this excluded those who were “disenfranchised by provincial legislation” (Canadian Encyclopedia). They would “remain disenfranchised from the federal vote” (Canadian Encyclopedia). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                              TextSpan(text: '\t\tThis affected Chinese, Indigenous, Japanese, and South Asian people(Canadian Encyclopedia).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1920e.jpg')),
                    ),
                  ),
                ],
              ),


              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[9] == false)
                      isVisible[9] = true;
                    else if(isVisible[9] == true){
                      isVisible[9] = false;
                    }
                  });
                }, child: Text('1931',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child:Image(image: AssetImage('assets/images/unit3images/1931e.jpg')),
                    ),
                  ),

                  Visibility(
                    visible: isVisible[9],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 700,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: RichText(text:
                            TextSpan(children: [
                              TextSpan(text: '1931\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\tThe “federal government sold all Japanese Canadian-owned property” (Canadian Encyclopedia).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),


                ],
              ),


              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[10] == false)
                      isVisible[10] = true;
                    else if(isVisible[10] == true){
                      isVisible[10] = false;
                    }
                  });
                }, child: Text('1944',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [


                  Visibility(
                    visible: isVisible[10],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: RichText(text:
                            TextSpan(children: [
                              TextSpan(text: '1944\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\tOntario “passed the Racial Discrimination Act of 1944” (Canadian Encyclopedia).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1944.jpg')),
                    ),
                  ),

                ],
              ),


              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[11] == false)
                      isVisible[11] = true;
                    else if(isVisible[11] == true){
                      isVisible[11] = false;
                    }
                  });
                }, child: Text('1946',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1946e.jpg')),
                    ),
                  ),

                  Visibility(
                    visible: isVisible[11],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: RichText(text:
                            TextSpan(children: [
                              TextSpan(text: '1946\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\tGovernment attempts to deport 10,000 Japanese Canadians to Japan, but is stopped by a protest   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),



                ],
              ),


              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[12] == false)
                      isVisible[12] = true;
                    else if(isVisible[12] == true){
                      isVisible[12] = false;
                    }
                  });
                }, child: Text('1947',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [
                  Visibility(
                    visible: isVisible[12],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: RichText(text:
                            TextSpan(children: [
                              TextSpan(text: '1947\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\tFederal government allows Chinese & South Asian Canadians to vote   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                              TextSpan(text: '\t\tThough it is not until 1951 that changes are across all provinces/territories (Canadian Encyclopedia).   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1947e.jpg')),
                    ),
                  ),

                ],
              ),


              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[13] == false)
                      isVisible[13] = true;
                    else if(isVisible[13] == true){
                      isVisible[13] = false;
                    }
                  });
                }, child: Text('1949',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1949e.jpg')),
                    ),
                  ),

                  Visibility(
                    visible: isVisible[13],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1949\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tJapanese Canadians were given the right to vote  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tAlso, “the legal restrictions used to control the movement of Japanese Canadians were removed” (Canadian Encyclopedia).   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                          ]),
                          ),
                        ),
                      ),
                    ),
                  ),


                ],
              ),


              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[14] == false)
                      isVisible[14] = true;
                    else if(isVisible[14] == true){
                      isVisible[14] = false;
                    }
                  });
                }, child: Text('1971',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [
                  Visibility(
                    visible: isVisible[14],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: RichText(text:
                            TextSpan(children: [
                              TextSpan(text: '1971\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\tCanada’s Multicultural Policy is established (Canadian Encyclopedia).   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1971e.jpg')),
                    ),
                  ),

                ],
              ),


              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[15] == false)
                      isVisible[15] = true;
                    else if(isVisible[15] == true){
                      isVisible[15] = false;
                    }
                  });
                }, child: Text('1975',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [
                  Expanded(
                  child: Container(
                      width: 200,
                      height: 300,
                      child: Image(image: AssetImage('assets/images/unit3images/1975e.jpg')),
                  ),
                ),

                  Visibility(
                    visible: isVisible[15],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: RichText(text:
                            TextSpan(children: [
                              TextSpan(text: '1975\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\tCanada takes in refugees from the countries involved in the Vietnam War. \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),


                ],
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[16] == false)
                      isVisible[16] = true;
                    else if(isVisible[16] == true){
                      isVisible[16] = false;
                    }
                  });
                }, child: Text('1988',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [

                  Visibility(
                    visible: isVisible[16],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1988\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\t“Prime Minister Brian Mulroney acknowledged the wartime wrongs committed against Japanese Canadians” (Canadian Encyclopedia).\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tHe promised “compensation for each individual who had been expelled from the coast” (Canadian Encyclopedia). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                          ]),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1988e.jpg')),
                    ),
                  ),

                ],
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[16] == false)
                      isVisible[16] = true;
                    else if(isVisible[16] == true){
                      isVisible[16] = false;
                    }
                  });
                }, child: Text('2006',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [
                  Expanded(
                  child: Container(
                      width: 200,
                      height: 300,
                      child: Image(image: AssetImage('assets/images/unit3images/2006e.jpg')),
                  ),
                ),

                  Visibility(
                    visible: isVisible[16],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '2006\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tPrime Minister Stephen Harper apologizes “to the Chinese community for the implementation of the head tax” \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\t\$20,000 compensation was offered to “survivors or their spouses” (Canadian Encyclopedia).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                          ]),
                          ),
                        ),
                      ),
                    ),
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
