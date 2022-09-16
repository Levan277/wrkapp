import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../finalScreens/final_home.dart';
import '../../../support_screens/support_home_screen.dart';
import '../../../tweetScreen.dart';

class SouthAsianPeopleTimeline extends StatefulWidget {
  const SouthAsianPeopleTimeline({Key? key}) : super(key: key);

  @override
  State<SouthAsianPeopleTimeline> createState() => _SouthAsianPeopleTimelineState();
}

class _SouthAsianPeopleTimelineState extends State<SouthAsianPeopleTimeline> {
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
      backgroundColor: Colors.white
      ,
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
                child: Text("Timeline of South Asian People in Canada ",style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
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
                }, child: Text('1869',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
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
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1869 \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tThe Immigration Act was put into place.  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tIt was made to encourage people of European descent to immigrate to Canada without the fear of being exploited upon arrival. (South Asian Canadian Heritage). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),

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
                      child: Image(image: AssetImage('assets/images/unit3images/1869s.jpg')),

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
                }, child: Text('1897',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1897s.jpg')),
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
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1897\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tPeople started migrating from South Asia to Canada \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\t“Troops from Hong Kong and Malay States visit BC on their return for London…after celebrations of Queen Victoria’s Jubilee” (South Asian Canadian Heritage). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tUpon arrival, it is suggested that “they told stories to other troops about the new immigrants,” which incited the migration of South Asian people. \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                    if(isVisible[2] == false)
                      isVisible[2] = true;
                    else if(isVisible[2] == true){
                      isVisible[2] = false;
                    }
                  });
                }, child: Text('1902',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
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
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1902  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\t “The first group of Sikhs travelled to Canada ”  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tThey were a “part of a Hong Kong military regiment en route to England” for King Edward VII’s coronation. (South Asian Canadian Heritage). ” \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),

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
                        child: Image(image: AssetImage('assets/images/unit3images/1902s.jpg')),
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
                }, child: Text('1903',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1903s.jpg')),
                    ),
                  ),

                  Visibility(
                    visible: isVisible[3],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 600,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: RichText(text:
                            TextSpan(children: [
                              TextSpan(text: '1903  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\t“The first South Asian men arrived in Vancouver and Victoria” (South Asian Canadian Heritage). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                              TextSpan(text: '\t\t“From 1904-1905, the population of South Asian people in Canada increased. (South Asian Canadian Heritage). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),

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
                }, child: Text('1907',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [


                  Visibility(
                    visible: isVisible[4],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 680,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1907\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tSouth Asians were denied right to vote in federal Vancouver elections (South Asian Canadian Heritage).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tAnti-Asian riots broke out in Vancouver   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\t In September, “hundreds of people broke out into riots throughout Vancouver” protesting “Asian Immigration to Canada” (South Asian Canadian Heritage).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\t“The Vancouver Khalsa Diwan Society was created” (Canadian Encyclopedia).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                        child: Image(image: AssetImage('assets/images/unit3images/1907s.jpg')),
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
                }, child: Text('1908',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),


              Row(
                children: [

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1908s.jpg')),
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
                              TextSpan(text: '1908 \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\tThe “government passes an order-in-council…prohibiting immigration of persons that did not travel on a continuous journey to Canada” (South Asian Canadian Heritage).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                              TextSpan(text: '\t\tOn January 8th, “Canadian Prime Minister William Lyon Mackenzie King” along with others attempted to “send Indian immigrants to Honduras” to “get ‘rid’ of them” (South Asian Canadian Heritage).   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                              TextSpan(text: '\t\tThanks to the help of Sant Teja Singh and the Sikh community, the plan was rejected (South Asian Canadian Heritage).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                              TextSpan(text: '\t\t A \$200 head tax was imposed “on all Asian immigrants” arriving in Canada. It was meant to “prevent the entry of wives and families of residing South Asians” (South Asian Canadian Heritage).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),

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
                }, child: Text('1910',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
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
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1910\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tThe Immigration Act is amended \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tWith the new changes, the Act gave the government the power to refuse entry of immigrants solely based on their race.  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tThis was targeted to stop South Asian immigration (South Asian Canadian Heritage). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),

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
                        child:  Image(image: AssetImage('assets/images/unit3images/1910s.jpg')),
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
                }, child: Text('1914',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child:  Image(image: AssetImage('assets/images/unit3images/1914s.jpg')),
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
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1914\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tThe Komagata Maru ship arrives in Vancouver, and the passengers are eventually refused entry  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\t “According to the Canadian law of the “continuous Journey” which forbids immigrants on ships from travelling to Canada unless they are sailing straight from their country of origin” (South Asian Canadian Heritage).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tThey were sailing from Gong Kong to Canada (South Asian Canadian Heritage).   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                    if(isVisible[8] == false)
                      isVisible[8] = true;
                    else if(isVisible[8] == true){
                      isVisible[8] = false;
                    }
                  });
                }, child: Text('1919',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
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
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1919\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tThe immigration restriction of bringing wives and children to Canada is lifted    \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tWhile residing South Asian Canadians could bring their family over, there were restrictions: no children over 18 years of age and only 11 dependants   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tAdditionally, the process of immigrating to Canada from India was extremely difficult (South Asian Canadian Heritage).   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                        child:  Image(image: AssetImage('assets/images/unit3images/1919s.jpg')),
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
                }, child: Text('1921',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child:  Image(image: AssetImage('assets/images/unit3images/1921s.jpg')),
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
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1921\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tThe government tightens immigration laws for some South Asians  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tThey imposed a law stating that South Asian Canadians would lose their ability to reside in Canada if they were out of the country for more than 3 years (South Asian Canadian Heritage). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tThis made some South Asian men reluctant to retrieve their family from India, and caused others to never be let into the country again (South Asian Canadian Heritage).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                    if(isVisible[10] == false)
                      isVisible[10] = true;
                    else if(isVisible[10] == true){
                      isVisible[10] = false;
                    }
                  });
                }, child: Text('1947',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
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
                              TextSpan(text: '1947\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\tSouth Asian immigrants are finally able to vote and become Canadian citizens (South Asian Canadian Heritage). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                        child:  Image(image: AssetImage('assets/images/unit3images/1947s.jpg')),
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
                }, child: Text('1951',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1951s.jpg')),
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
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1951\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tCanada imposes a quota of how many South Asian people are allowed to immigrant to Canada per year.   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\t\t1.100 Indian  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\t\t2.100 Pakistanis   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\t\t1.50 Ceylonese  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                    if(isVisible[12] == false)
                      isVisible[12] = true;
                    else if(isVisible[12] == true){
                      isVisible[12] = false;
                    }
                  });
                }, child: Text('1962',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
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
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1962\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tNew immigration laws are instated  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tMost racial immigration restrictions are removed (South Asian Canadian Heritage)  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                        child:  Image(image: AssetImage('assets/images/unit3images/1962s.jpg')),
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
                }, child: Text('2010',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),



              Row(
                children: [
                  Expanded(
                  child: Container(
                      width: 200,
                      height: 300,
                      child: Image(image: AssetImage('assets/images/unit3images/2010s.jpg')),
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
                            TextSpan(text: '2010\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tSri Lankan refugees arrive in BC (South Asian Canadian Heritage).   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                }, child: Text('2016',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
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
                              TextSpan(text: '2016\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\tPrime Minister Justin Trudeau apologizes for turning back “passengers on the Komagata Maru in 1914” (South Asian Canadian Heritage).   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                        child: Image(image: AssetImage('assets/images/unit3images/2016s.jpg')),
                    ),
                  ),

                ],
              ),


            ],
          ),
        ],
      ),
    ));
  }
}
