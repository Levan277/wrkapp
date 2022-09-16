import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../finalScreens/final_home.dart';
import '../../../support_screens/support_home_screen.dart';
import '../../../tweetScreen.dart';

class BlackPeopleInCanadaRTimeline extends StatefulWidget {
  const BlackPeopleInCanadaRTimeline({Key? key}) : super(key: key);

  @override
  State<BlackPeopleInCanadaRTimeline> createState() => _BlackPeopleInCanadaRTimelineState();
}

class _BlackPeopleInCanadaRTimelineState extends State<BlackPeopleInCanadaRTimeline> {
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
                child: Text("Timeline of Racism Against Black People in Canada ",style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
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
                }, child: Text('1608',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),


              Row(
                children: [

                  Visibility(
                    visible: isVisible[0],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1608\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tMathieu Da Costa is the first Black person to come to Canada (The Canadian Encyclopedia). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tThis is according to the available records  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),

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
                      child:  Image(image: AssetImage('assets/images/unit3images/1608b.jpg'),),

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
                }, child: Text('1619',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),


              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child:  Image(image: AssetImage('assets/images/unit3images/1619b.jpg')),
                    ),
                  ),
                  Visibility(
                    visible: isVisible[1],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1619 \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tThe “first shipload of enslaved Africans to reach British North America landed in James town” (The Canadian Encyclopedia) on August 20th\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),

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
                }, child: Text('1685',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
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
                            TextSpan(text: '1685  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\t “Louis XIV’s Code Noir permitted slavery for economic purposes only”  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tHe created “strict guidelines for the ownership and treatment of slaves” \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),

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
                        child: Image(image: AssetImage('assets/images/unit3images/1685b.jpg')),
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
                }, child: Text('1775',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child:Image(image: AssetImage('assets/images/unit3images/1775.jpg')),
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
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1775 \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tBritish offers freedom to African slaves who joined British in American War of Independence  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\t“The Black Loyalists founded settlements throughout Nova Scotia” (Government of Canada).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tThey “faced discrimination and were given” less land, supplies, “and were expected to work for lower wages.” (Government of Canada).   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),

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
                    if(isVisible[4] == false)
                      isVisible[4] = true;
                    else if(isVisible[4] == true){
                      isVisible[4] = false;
                    }
                  });
                }, child: Text('1776',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),


              Row(
                children: [


                  Visibility(
                    visible: isVisible[4],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 480,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1776\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tBritish make promises to Black slaves in exchange for their services \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tDuring the American Revolution, the “British promised land, freedom and rights to slaves and free Blacks in exchange for services” (The Canadian Encyclopedia).   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                        child: Image(image: AssetImage('assets/images/unit3images/1776b.jpg')),
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
                }, child: Text('1815',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),


              Row(
                children: [

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1815b.jpg')),
                    ),
                  ),

                  Visibility(
                    visible: isVisible[5],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: RichText(text:
                            TextSpan(children: [
                              TextSpan(text: '1815\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\tFrom 1815 to 1865, “tens of thousands of African-Americans” fled to Canada using the Underground Railroad. (The Canadian Encyclopedia). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                }, child: Text('1833',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [


                  Visibility(
                    visible: isVisible[6],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1833\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tOn August 28, slavery “was abolished throughout the British colonies”\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tThis became effective on August 1st, 1834 \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\t“The act formally freed…800,000 slaves,” though “there were probably fewer than 50 slaves in British North America by that time.” (The Canadian Encyclopedia). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),

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
                        child: Image(image: AssetImage('assets/images/unit3images/1775.jpg')),
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
                }, child: Text('1850',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),


              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1850b.jpg')),
                    ),
                  ),
                  Visibility(
                    visible: isVisible[7],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 550,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1850\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tSegregated schools became legal under Common Schools Act   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tThe “Common Schools Act, the legislation governing education in Ontario, was amended” to allow the “establishment of separate schools for Catholics, Protestants and Black people” (Henry).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\t“Some [school] trustees tampered with electoral boundaries to prevent Black children from attending certain schools” (Henry).   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\t“The “trustees used the clause to support the practice of segregation” (Henry).   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                }, child: Text('1884',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),


              Row(
                children: [


                  Visibility(
                    visible: isVisible[8],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1884\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tIn Nova Scotia, amendments to legislation “stated that Black children could not be excluded from attending schools where they lived” (Henry).    \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tThough, “racially segregated schools persisted because residential neighbourhoods were segregated” (Henry).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                        child: Image(image: AssetImage('assets/images/unit3images/1884b.jpg')),
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
                }, child: Text('1911',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1911.jpg')),
                    ),
                  ),

                  Visibility(
                    visible: isVisible[9],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: RichText(text:
                            TextSpan(children: [
                              TextSpan(text: '1911\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\tFrank Oliver created immigration policies that “favoured nationality over occupation” (The Canadian Encyclopedia). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                              TextSpan(text: '\t\tAnti-Black campaign  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                }, child: Text('1916',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
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
                              TextSpan(text: '1916\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\tBlack Battalion were segregated in Canadian Military (Nova Scotia Canada).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                              TextSpan(text: '\t\tBlack volunteers were denied by Armed Forces until 1993 (Nova Scotia Canada). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                        child: Image(image: AssetImage('assets/images/unit3images/1916b.jpg')),
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
                }, child: Text('1944',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child:Image(image: AssetImage('assets/images/unit3images/1944b.jpg')),
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
                            TextSpan(text: '1944\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tOntario passed the Racial Discrimination Act of 1944.  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tThis Act “prohibited the publication and display of any symbol, sign, or notice that expressed ethnic, racial, or religious discrimination” (The Canadian Encyclopedia).   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                            TextSpan(text: '\t\tImmigration policy is reformed   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tEllen Fairclough, Minister of Citizenship, reformed “the government’s ‘White Canada’ immigration policy” (The Canadian Encyclopedia).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tHer changes “helped to eliminate racial discrimination in Canada immigration policy (The Canadian Encyclopedia).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                        child:Image(image: AssetImage('assets/images/unit3images/1962b.jpg')),
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
                }, child: Text('1964',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1964b.jpg')),
                    ),
                  ),

                  Visibility(
                    visible: isVisible[13],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 600,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: RichText(text:
                            TextSpan(children: [
                              TextSpan(text: '1964\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                              TextSpan(text: '\t\tAfricville was demolished   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                              TextSpan(text: '\t\tDespite pushback from citizens, the Halifax Planning Commission shut it down because it “lack basic services such as water” (The Canadian Encyclopedia). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),

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
                    if(isVisible[14] == false)
                      isVisible[14] = true;
                    else if(isVisible[14] == true){
                      isVisible[14] = false;
                    }
                  });
                }, child: Text('1965',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
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
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1965\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tThe KKK created disruptions across Amherstburg, Ontario.   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tThey set a cross on fire, defaced the Black Baptist Church, and “spray-painted ‘Amherstburg Home of the KKK’” on the town sign (The Canadian Encyclopedia).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tThe incidents stopped after the Ontario Human Rights Commission became involved, although no “arrests were made” (The Canadian Encyclopedia).   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                        child: Image(image: AssetImage('assets/images/unit3images/1965.jpg')),
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
                }, child: Text('1971',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),


              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1971b.jpg')),
                    ),
                  ),

                  Visibility(
                    visible: isVisible[15],
                    child: Expanded(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: 200,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1971\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tPrime Minister Trudeau proclaimed “that Canada was a ‘multicultural country with two official languages” (The Canadian Encyclopedia). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                    if(isVisible[16] == false)
                      isVisible[16] = true;
                    else if(isVisible[16] == true){
                      isVisible[16] = false;
                    }
                  });
                }, child: Text('1983',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
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
                            TextSpan(text: '1983\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tThe closure of the last segregated school (Nova Scotia Canada).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                          ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.topCenter,
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1983b.jpg')),
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
