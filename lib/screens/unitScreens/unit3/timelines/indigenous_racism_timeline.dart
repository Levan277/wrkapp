import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../finalScreens/final_home.dart';
import '../../../support_screens/support_home_screen.dart';
import '../../../tweetScreen.dart';

class IndigenousTimeline extends StatefulWidget {
  const IndigenousTimeline({Key? key}) : super(key: key);

  @override
  State<IndigenousTimeline> createState() => _IndigenousTimelineState();
}

class _IndigenousTimelineState extends State<IndigenousTimeline> {
  // bool isVisible = false;
  List<bool> isVisible = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false];
 var  _currentIndex = 0;
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
                child: Text("Timeline of Racism Against Indigenous Peoples in Canada ",style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
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
                }, child: Text('Late 1400s',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
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
                          const TextSpan(children: [
                            TextSpan(text: 'Late 1400s\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),

                            TextSpan(text: '\t\tChristopher Columbus labeled the Indigenous Peoples as “Indians” as he thought he had landed in the Asia (he was actually in the Caribbean) (McCue).\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),

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
                       child: Image(image: AssetImage('assets/images/unit3images/1400i.jpg'),),),
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
                }, child: Text('Late 1820s-1840s',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1820i.jpg')),
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
                            TextSpan(text: '1820s-1840s \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tThe Fur Trade started collapsing & Europeans devised ways to “manage” the Indigenous peoples.\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tThe Fur Trade was integral to the Indigenous People (Canadian Geographic; Facing History & Ourselves).\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),

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
                }, child: Text('1857',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
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
                            TextSpan(text: '1857  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tThe Gradual Civilization Act of 1857 was put into place (Facing History & Ourselves). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tt was designed to “assimilate Indigenous peoples to the economic and social customs of European settler society” (The Canadian Encyclopedia).\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),

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
                        child: Image(image: AssetImage('assets/images/unit3images/1857i.jpg')),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[3]== false)
                      isVisible[3] = true;
                    else if(isVisible[3] == true){
                      isVisible[3] = false;
                    }
                  });
                }, child: Text('1869',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1869i.jpg')),
                    ),
                  ),

                  Visibility(
                    visible: isVisible[3],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 700,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1869\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tThe Gradual Enfranchisement Act of 1869 was put into place (Facing History & Ourselves).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tprovided the government with more control over who they could declare an ‘Indian’” (Indian Residential School History & Dialogue Centre). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tIt revoked the rights of Indigenous People and took away Indigenous women’s status if they married men without status (Indian Residential School History & Dialogue Centre).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                             ],
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
                }, child: Text('1876',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
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
                            TextSpan(text: '1876\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tThe Indian Act was established (Facing History & Ourselves).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tIt was a merger of the Gradual Enfranchisement Act and the Gradual Civilization Act (Facing History & Ourselves).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tWas “the primary law the federal government uses to administer Indian status, local First Nations governments and the management of reserve land” (The Canadian Encyclopedia).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),

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
                        child: Image(image: AssetImage('assets/images/unit3images/1876i.jpg')),
                    ),
                  ),
                ],
              ),


              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[5] == false)
                      isVisible[5]= true;
                    else if(isVisible[5] == true){
                      isVisible[5] = false;
                    }
                  });
                }, child: Text('1879',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child:Image(image: AssetImage('assets/images/unit3images/1879i.jpg')),
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
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1879\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tResidential schools were approved by Canadian government. \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\t “were government-sponsored religious schools that were established to assimilate Indigenous children into Euro-Canadian culture” (The Canadian Encyclopedia).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),

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
                    if(isVisible[6] == false)
                      isVisible[6]= true;
                    else if(isVisible[6] == true){
                      isVisible[6] = false;
                    }
                  });
                }, child: Text('1883',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
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
                            TextSpan(text: '1883\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tFederal-run residential schools came into effect.   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tResidential schools run by churches came into effect in 1880 (Canadian Geographic).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),

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
                        child:  Image(image: AssetImage('assets/images/unit3images/1883i.jpg')),
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
                }, child: Text('1907',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),
              Row(
                children: [

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child:  Image(image: AssetImage('assets/images/unit3images/1907i.jpg')),
                    ),
                  ),
                  Visibility(
                    visible: isVisible[7],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1907\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tDr. Peter Henderson Bryce visits several residential schools and “reveals that Indigenous children are dying at alarming rates” (The Canadian Encyclopedia).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),

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
                      isVisible[8]= true;
                    else if(isVisible[8] == true){
                      isVisible[8] = false;
                    }
                  });
                }, child: Text('1934',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
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
                            TextSpan(text: '1934\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tOn January 1st, The Dominion Franchise Act was put into place” (The Canadian Encyclopedia).   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tDisqualified Inuit and status Indians from voting (The Canadian Encyclopedia).    \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                        child:Image(image: AssetImage('assets/images/unit3images/1934i.jpg')),
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
                }, child: Text('1948',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),
              Row(
                children: [

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/1948i.jpg')),
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
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1948\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tAbolition of residential schools  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tAfter WWII, Canada realized that they had a humans rights issue concerning the Indigenous Peoples, so they “called for the abolition of residential schools” (Facing History & Ourselves).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                      isVisible[10]  = true;
                    else if(isVisible[10]  == true){
                      isVisible[10]  = false;
                    }
                  });
                }, child: Text('1949',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),
              Row(
                children: [


                  Visibility(
                    visible: isVisible[10] ,
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1949\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tFirst Nations people gradually became able to vote provincially without losing their status or treaty rights” (The Canadian Encyclopedia).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                        child: Image(image: AssetImage('assets/images/unit3images/1949i.jpg')),
                    ),
                  ),

                ],
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[11] == false)
                      isVisible[11]  = true;
                    else if(isVisible[11]  == true){
                      isVisible[11]  = false;
                    }
                  });
                }, child: Text('1960s',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [


                  Visibility(
                    visible: isVisible[11],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1960s\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tThe Sixties Scoop  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tAfter the closure of residential schools, “thousands of Indigenous children were taken from their families by social workers and placed in foster or adoption homes” (The Canadian Encyclopedia).   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                        child:  Image(image: AssetImage('assets/images/unit3images/1960i.jpg')),
                    ),
                  ),

                ],
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[12] == false)
                      isVisible[12]  = true;
                    else if(isVisible[12]  == true){
                      isVisible[12]  = false;
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
                        height: 400,
                        child:  Image(image: AssetImage('assets/images/unit3images/1971i.jpg')),
                    ),
                  ),

                  Visibility(
                    visible: isVisible[12],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 900,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '1971\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tThe Numbered Treaties are signed  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tThey are signed by the Canadian government & the Indigenous nations (The Canadian Encyclopedia).   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tThe treaties served as an agreement between the government and Indigenous peoples    \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tThe government would get to use Indigenous land for “industrial development” (The Canadian Encyclopedia) and the Indigenous peoples would get special “rights and benefits” (The Canadian Encyclopedia)    \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\t“The Numbered Treaties have had long-lasting legal, social, and economic impacts on Indigenous people” (The Canadian Encyclopedia)  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                    if(isVisible[13] == false)
                      isVisible[13]  = true;
                    else if(isVisible[13]  == true){
                      isVisible[13]  = false;
                    }
                  });
                }, child: Text('1973',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),
              Row(
                children: [


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
                            TextSpan(text: '1973\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tThe Supreme Court of Canada agrees that Indigenous peoples held title to land before European colonization” (The Canadian Encyclopedia).   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                        child: Image(image: AssetImage('assets/images/unit3images/1973i.jpg')),
                    ),
                  ),

                ],
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[14] == false)
                      isVisible[14]  = true;
                    else if(isVisible[14]  == true){
                      isVisible[14]  = false;
                    }
                  });
                }, child: Text('1996',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child:  Image(image: AssetImage('assets/images/unit3images/1996i.jpg')),
                    ),
                  ),

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
                            TextSpan(text: '1996\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tThe last residential school (Gordon Residential School) closed (Miller).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                    if(isVisible[15] == false)
                      isVisible[15]  = true;
                    else if(isVisible[15]  == true){
                      isVisible[15]  = false;
                    }
                  });
                }, child: Text('2007',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [

                  Visibility(
                    visible: isVisible[15],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '2007\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tThe Indian Residential Schools Settlement Agreement comes into place (The Canadian Encyclopedia). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                        child:Image(image: AssetImage('assets/images/unit3images/2007i.jpg'),),
                    ),
                  ),


                ],
              ),


              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[16] == false)
                      isVisible[16]  = true;
                    else if(isVisible[16]  == true){
                      isVisible[16]  = false;
                    }
                  });
                }, child: Text('2008',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [

                  Expanded(
                    child: Container(
                      width: 200,
                      height: 300,
                      child:  Image(image: AssetImage('assets/images/unit3images/2008i.jpg')),
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
                            TextSpan(text: '2008\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tThe “Truth and Reconciliation Commission of Canada is established” (The Canadian Encyclopedia).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tOn June 11th, Prime Minister Stephen Harper apologizes to the “students, families, and communities for Canada’s roles in the operation of residential schools” (The Canadian Encyclopedia).   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                    if(isVisible[17] == false)
                      isVisible[17]  = true;
                    else if(isVisible[17]  == true){
                      isVisible[17]  = false;
                    }
                  });
                }, child: Text('2010',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),


              Row(
                children: [
                  Visibility(
                    visible: isVisible[17],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '2010\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tThe first National Truth and Reconciliation event takes place   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tIt was held in Winnipeg, MB  (The Canadian Encyclopedia).   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                        child:  Image(image: AssetImage('assets/images/unit3images/2010i.jpg')),
                    ),
                  ),



                ],
              ),


              Padding(
                padding: EdgeInsets.all(18),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[18] == false)
                      isVisible[18]  = true;
                    else if(isVisible[18]  == true){
                      isVisible[18]  = false;
                    }
                  });
                }, child: Text('2015',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),
              Row(
                children: [

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child:Image(image: AssetImage('assets/images/unit3images/2015i.jpg')),
                    ),
                  ),

                  Visibility(
                    visible: isVisible[18],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '2015\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tThe Truth and Reconciliation Committee was established (Nelligan Law).\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                    if(isVisible[19] == false)
                      isVisible[19]  = true;
                    else if(isVisible[19]  == true){
                      isVisible[19]  = false;
                    }
                  });
                }, child: Text('2019',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [

                  Visibility(
                    visible: isVisible[19],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 450,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '2019\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tThe National Inquiry’s Final Report is publicized \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tIt “revealed that persistent and deliberate human and Indigenous rights violations and abuses are the root cause behind Canada’s staggering rates of violence against Indigenous women, girls and 2SLGBTQQIA people” (Nelligan Law). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                        child:Image(image: AssetImage('assets/images/unit3images/2019i.jpg')),
                    ),
                  ),

                ],
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState((){
                    if(isVisible[20] == false)
                      isVisible[20]  = true;
                    else if(isVisible[20]  == true){
                      isVisible[20]  = false;
                    }
                  });
                }, child: Text('2021',style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),

              Row(
                children: [

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/unit3images/2021i.jpg')),
                    ),
                  ),


                  Visibility(
                    visible: isVisible[20],
                    child: Expanded(
                      child: Container(
                        width: 200,
                        height: 600,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(text:
                          TextSpan(children: [
                            TextSpan(text: '2021\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(text: '\t\tOver the course of the year, over 1,000 unmarked children’s graves were discovered on the grounds of residential schools in Canada (The Canadian Encyclopedia). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tOn May 27th, 215 unmarked children’s graves were found on grounds of the Kamloops Residential School (The Canadian Encyclopedia). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(text: '\t\tOn June 23rd, an estimated 751 unmarked children’s graves were found at the Marieval Indian Residential School (The Canadian Encyclopedia).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
    ));
  }
}

