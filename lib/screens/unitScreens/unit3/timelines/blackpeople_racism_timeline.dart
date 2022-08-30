import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BlackPeopleInCanadaRTimeline extends StatefulWidget {
  const BlackPeopleInCanadaRTimeline({Key? key}) : super(key: key);

  @override
  State<BlackPeopleInCanadaRTimeline> createState() => _BlackPeopleInCanadaRTimelineState();
}

class _BlackPeopleInCanadaRTimelineState extends State<BlackPeopleInCanadaRTimeline> {
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
                child: Text("Timeline of Racism Against Black People in Canada ",style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
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
                          TextSpan(text: '1685  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                          TextSpan(text: '\t\t “Louis XIV’s Code Noir permitted slavery for economic purposes only”  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                          TextSpan(text: '\t\tHe created “strict guidelines for the ownership and treatment of slaves” \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),

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
                          TextSpan(text: '1815\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                          TextSpan(text: '\t\tFrom 1815 to 1865, “tens of thousands of African-Americans” fled to Canada using the Underground Railroad. (The Canadian Encyclopedia). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                          TextSpan(text: '1884\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                          TextSpan(text: '\t\tIn Nova Scotia, amendments to legislation “stated that Black children could not be excluded from attending schools where they lived” (Henry).    \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                          TextSpan(text: '\t\tThough, “racially segregated schools persisted because residential neighbourhoods were segregated” (Henry).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                          TextSpan(text: '1911\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                          TextSpan(text: '\t\tFrank Oliver created immigration policies that “favoured nationality over occupation” (The Canadian Encyclopedia). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                          TextSpan(text: '\t\tAnti-Black campaign  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                          TextSpan(text: '1962\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                          TextSpan(text: '\t\tImmigration policy is reformed   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                          TextSpan(text: '\t\tEllen Fairclough, Minister of Citizenship, reformed “the government’s ‘White Canada’ immigration policy” (The Canadian Encyclopedia).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                          TextSpan(text: '\t\tHer changes “helped to eliminate racial discrimination in Canada immigration policy (The Canadian Encyclopedia).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                      height: 900,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
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
                          TextSpan(text: '1965\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                          TextSpan(text: '\t\tThe KKK created disruptions across Amherstburg, Ontario.   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                          TextSpan(text: '\t\tThey set a cross on fire, defaced the Black Baptist Church, and “spray-painted ‘Amherstburg Home of the KKK’” on the town sign (The Canadian Encyclopedia).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
                          TextSpan(text: '\t\tThe incidents stopped after the Ontario Human Rights Commission became involved, although no “arrests were made” (The Canadian Encyclopedia).   \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                          TextSpan(text: '1971\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                          TextSpan(text: '\t\tPrime Minister Trudeau proclaimed “that Canada was a ‘multicultural country with two official languages” (The Canadian Encyclopedia). \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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
                        child: RichText(text:
                        TextSpan(children: [
                          TextSpan(text: '1983\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
                          TextSpan(text: '\t\tThe closure of the last segregated school (Nova Scotia Canada).  \n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
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




            ],
          ),
        ],
      ),
    ));
  }
}
