import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EastAsianPeopleTimeline extends StatefulWidget {
  const EastAsianPeopleTimeline({Key? key}) : super(key: key);

  @override
  State<EastAsianPeopleTimeline> createState() => _EastAsianPeopleTimelineState();
}

class _EastAsianPeopleTimelineState extends State<EastAsianPeopleTimeline> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
                child: Text("Timeline of East Asian People in Canada ",style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 200,
                child: Lottie.asset('assets/lottie/alarm-clock.json'),
              ),
              Row(
                children: [

                  Expanded(
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
                  Expanded(
                    child: Container(
                      width: 200,
                      height: 300,
                      child: Image(image: AssetImage('assets/images/race1.jpg'),),),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/race1.jpg'))
                    ),
                  ),
                  Expanded(
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

                ],
              ),



              Row(
                children: [

                  Expanded(
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
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/race1.jpg'))
                    ),
                  ),
                ],
              ),


              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/race1.jpg'))
                    ),
                  ),

                  Expanded(
                    child: Container(
                      width: 200,
                      height: 600,
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

                ],
              ),



              Row(
                children: [


                  Expanded(
                    child: Container(
                      width: 200,
                      height: 680,
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
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/race1.jpg'))
                    ),
                  ),
                ],
              ),




              Row(
                children: [

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/race1.jpg'))
                    ),
                  ),
                  Expanded(
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

                ],
              ),


              Row(
                children: [


                  Expanded(
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
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/race1.jpg'))
                    ),
                  ),
                ],
              ),


              Row(
                children: [

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/race1.jpg'))
                    ),
                  ),
                  Expanded(
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

                ],
              ),


              Row(
                children: [


                  Expanded(
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

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/race1.jpg'))
                    ),
                  ),
                ],
              ),


              Row(
                children: [

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/race1.jpg'))
                    ),
                  ),
                  Expanded(
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


                ],
              ),

              Row(
                children: [


                  Expanded(
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
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/race1.jpg'))
                    ),
                  ),

                ],
              ),



              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/race1.jpg'))
                    ),
                  ),
                  Expanded(
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



                ],
              ),



              Row(
                children: [
                  Expanded(
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

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/race1.jpg'))
                    ),
                  ),

                ],
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/race1.jpg'))
                    ),
                  ),

                  Expanded(
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


                ],
              ),

              Row(
                children: [
                  Expanded(
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

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/race1.jpg'))
                    ),
                  ),

                ],
              ),



              Row(
                children: [
                  Expanded(
                  child: Container(
                      width: 200,
                      height: 300,
                      child: Image(image: AssetImage('assets/images/race1.jpg'))
                  ),
                ),

                  Expanded(
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


                ],
              ),

              Row(
                children: [
                  Expanded(
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

                  Expanded(
                    child: Container(
                        width: 200,
                        height: 300,
                        child: Image(image: AssetImage('assets/images/race1.jpg'))
                    ),
                  ),

                ],
              ),

              Row(
                children: [
                  Expanded(
                  child: Container(
                      width: 200,
                      height: 300,
                      child: Image(image: AssetImage('assets/images/race1.jpg'))
                  ),
                ),
                  Expanded(
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



                ],
              ),


            ],
          ),
        ],
      ),
    ));
  }
}
