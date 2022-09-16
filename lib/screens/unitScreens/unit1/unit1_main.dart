import 'package:flutter/cupertino.dart';
import 'package:flutter/materiaL.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:wrkapp/Audio/u1_sec1_summary_audio.dart';
import 'package:wrkapp/screens/finalScreens/final_home.dart';
import 'package:wrkapp/screens/support_screens/support_home_screen.dart';
import 'package:wrkapp/screens/tweetScreen.dart';

import '../unit3/contemp_racism.dart';


class UnitsPage extends StatefulWidget {
  const UnitsPage({Key? key}) : super(key: key);

  @override
  State<UnitsPage> createState() => _UnitsPageState();
}

class _UnitsPageState extends State<UnitsPage> {
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
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: Text("Unit 1"),
        actions: [Icon(Icons.support_agent_rounded)],
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

                                  },
                                ),
                                ElevatedButton(
                                  child: Text('Section 2: Racism Spectrum',style: GoogleFonts.montserrat(fontSize: 15)),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ContempRacism()));
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

            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text("Definitions",style: GoogleFonts.montserrat(fontSize: 32,fontWeight: FontWeight.bold),),
            ),
             Padding(
               padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
               child: Container(
                 width: 100,
                 height: 50,
                 decoration: BoxDecoration(
                   color: Colors.pink,
                   borderRadius: BorderRadius.circular(40),
                 ),
                 //definition 1
                 child: Center(child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("Race",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),),
                 ),),
               ),
             ),
         Container(

           padding: EdgeInsets.all(12.0),
           child: Card(
             child: RichText(
               text:  TextSpan(
                 children: [
                   TextSpan(text: 'defined as a group of people that ', style: GoogleFonts.montserrat(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                   TextSpan(text: 'share', style: GoogleFonts.montserrat(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                   TextSpan(text: '“certain distinctive physical traits” (Blakemore). ',style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                   TextSpan(text: ' “’Race’ is usually associated with biology and ',style: TextStyle(color: Colors.black,fontSize: 16)),
                   TextSpan(text: 'linked with physical characteristics ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                   TextSpan(text: 'such as skin color or hair texture” (Blakemore). \n',style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                   TextSpan(text: 'Example - ',style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                   TextSpan(text: ' When someone is describing their friend groups, they might say, “Jim is White, Kevin is Black, Iko is Japanese, and Juno is Latina.” ',style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                 ]
               ),
             ),
           ),
         ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit1images/race0.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:AssetImage('assets/images/unit1images/race2.jpg'),
                  ),
                ],
              ),

              //definition 2
              SizedBox(height: 40,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Racism",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: 'is defined as “prejudice, antagonism [definition] or ', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          TextSpan(text: 'discrimination…against someone ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          TextSpan(text: 'of a different race ',style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          TextSpan(text: ' based on the belief that one’s own race is superior” (McWhorter). ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        ]
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit1images/racism0.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit1images/racism2.jpg'),
                  ),
                ],
              ),


//definition 3

              SizedBox(height: 40,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Power",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: 'when we say “power” in this curriculum, we are referring to institutional power which is the ', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          TextSpan(text: '“ability or official authority to decide what is best for others. ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          TextSpan(text: 'The ability to decide who will have access to resources. The capacity to exercise control over others” ',style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          TextSpan(text: '(Vanderbilt University). ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        ]
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:AssetImage('assets/images/unit1images/pwr1.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/power.jpeg'),
                  ),
                ],
              ),

              //definition 4

              SizedBox(height: 40,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Racialization",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: 'is the act of giving a racial character to someone or something.', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          TextSpan(text: '(Canadian Race Relations Foundation). ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          TextSpan(text: 'Also, due to generalization, many people find this term too generic, and therefore do not use it. ', style: TextStyle(color: Colors.black,fontSize: 16)  ,children: [WidgetSpan(child: SizedBox(height: 30,))]
    ),
                        ]
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:AssetImage('assets/images/unit1images/racialization.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:AssetImage('assets/images/unit1images/racialization1.jpg'),
                  ),
                ],
              ),

//definition 5

              SizedBox(height: 40,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 180,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("People of Colour",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: 'A term used to describe people who are not White. However, this term is not used to describe Indigenous peoples', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),

                        ]
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit1images/poc.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit1images/poc2.jpg'),
                  ),
                ],
              ),

//definition 6

              SizedBox(height: 40,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 180,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Policy",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: 'is a law put into place by an organization (ex. the government) that is agreed to by those in/participating in that organization. ', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),

                        ]
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit1images/policy0.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:  AssetImage('assets/images/unit1images/policy1.jpeg'),
                  ),
                ],
              ),


//definition 7


              SizedBox(height: 40,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 180,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Equality vs. Equity ",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: 'Equality – ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16)),
                          TextSpan(text: ' “means providing everyone with the same amount of resources regardless of whether everyone needs them” ', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          TextSpan(text: '(Mlaba). \n\n', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16)),

                          TextSpan(text: 'Equity – ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16)),
                          TextSpan(text: '“is when resources are shared based on what each person needs in order to…level the playing field” ', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          TextSpan(text: '(Mlaba). ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16)),
                        ]
                    ),
                  ),
                ),
              ),

              Center(
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/unit1images/equality0.jpg'),
                    ),
                  ),
                ),
              ),




              SizedBox(height: 40,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 180,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Privilege & White Privilege ",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: 'Privilege – ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          TextSpan(text: ' “A right or ', style: TextStyle(color: Colors.black,fontSize: 16)),
                          TextSpan(text: 'benefit that is given to some people ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          TextSpan(text: ' “and not others”.\n\n ', style: TextStyle(color: Colors.black,fontSize: 16)),
                          TextSpan(text: 'White privilege – ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          TextSpan(text: ' “white privilege is when ', style: TextStyle(color: Colors.black,fontSize: 16)),
                          TextSpan(text: 'White people “[have] greater access to power and resources than people of colour [in the same situation] do” (Collins). ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        ]
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit1images/privil.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit1images/privil2.jpg'),
                  ),
                ],
              ),

//definition 9


              SizedBox(height: 40,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 180,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Xenophobia ",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: ' “In very simplistic terms, ', style: TextStyle(color: Colors.black,fontSize: 16)),
                          TextSpan(text: ' Xenophobia is a fear of people or ideas that are foreign or different from those in a particular society ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          TextSpan(text: 'It is “a deep-rooted, irrational (illogical or senseless) hatred towards or fear of foreigners (people who are not from that area), or of ideas or beliefs that are perceived as…strange or outside the norm” ', style: TextStyle(color: Colors.black, fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          TextSpan(text: '(White). ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        ]
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit1images/xeno0.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit1images/xeno3.jpg'),
                  ),
                ],
              ),

//definition 10



              SizedBox(height: 40,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 180,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Reverse Racism",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: 'Is when people from minority groups are “given benefits at the expense of” White people “who, apart from race, would have had a superior claim to enjoy them” ', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          TextSpan(text: '(Newkirk II). ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        ]
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:  AssetImage('assets/images/unit1images/reverseR.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:  AssetImage('assets/images/unit1images/reverseR2.jpg'),
                  ),
                ],
              ),

              //definition 11

              SizedBox(height: 40,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 180,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Colonization vs. Decolonization",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: 'Colonization – ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          TextSpan(text: 'The ', style: TextStyle(color: Colors.black,fontSize: 16)),
                          TextSpan(text: ' act of taking control of an area ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          TextSpan(text: 'or a country ', style: TextStyle(color: Colors.black,fontSize: 16)),
                          TextSpan(text: 'that is not your own, especially using force, ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          TextSpan(text: 'and sending people from your own country to live there” ', style: TextStyle(color: Colors.black,fontSize: 16)),
                          TextSpan(text: '(Oxford Learner’s Dictionary). \n\n', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),

                          TextSpan(text: 'Decolonization – ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          TextSpan(text: '“The process of a colony or colonies becoming independent” ', style: TextStyle(color: Colors.black,fontSize: 16)),
                          TextSpan(text: '(Oxford Learner’s Dictionary). ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        ]
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit1images/colonization.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:  AssetImage('assets/images/unit1images/decolon.jpg'),
                  ),
                ],
              ),

              //definition 12

              SizedBox(height: 40,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 180,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Marginalization ",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: 'The treatment of a person/group of people as insignificant and/or powerless.', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:  AssetImage('assets/images/unit1images/marginalization0.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:  AssetImage('assets/images/unit1images/marginalization1.jpg'),
                  ),
                ],
              ),

              //definition 13
              SizedBox(height: 40,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 180,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Oppression",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: 'The exercise of authority or power in a cruel or unjust manner.', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        ]
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:  AssetImage('assets/images/unit1images/oppresion1.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:  AssetImage('assets/images/unit1images/opp2.jpg'),
                  ),
                ],
              ),

              //definition 14

              SizedBox(height: 40,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 180,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("White Supremacy ",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: '“The belief that the white race is inherently superior to other races and that white people should have control over people of other races ', style: TextStyle(color: Colors.black,fontSize: 16)),
                          TextSpan(text: '(Merriam-Webster Dictionary).', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        ]
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:  AssetImage('assets/images/unit1images/whitesuprem.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:  AssetImage('assets/images/unit1images/whitesuprem2.jpg'),
                  ),
                ],
              ),
//definition 15


              SizedBox(height: 40,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 180,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Systemic & Institutional Racism  ",style: TextStyle(color: Colors.white,fontSize: 20,),textAlign: TextAlign.center,),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: 'Systemic racism – ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          TextSpan(text: 'Is racism that exists across a society. \n\n', style: TextStyle(color: Colors.black,fontSize: 16)),
                          TextSpan(text: 'Institutional racism – ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                          TextSpan(text: 'is a racial discrimination that has become established as normal behaviour within a society or organization.  ', style: TextStyle(color: Colors.black,fontSize: 16),),
                         ]
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:  AssetImage('assets/images/unit1images/systematicR.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:  AssetImage('assets/images/unit1images/instR.jpg'),
                  ),
                ],
              ),


              //definition 16
              SizedBox(height: 40,),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  width: 180,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Cultural Racism ",style: TextStyle(color: Colors.white,fontSize: 20)),
                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Card(
                  child: RichText(
                    text:  TextSpan(
                        children: [
                          TextSpan(text: 'refers to the representations…and stories conveying the idea that behaviours and values associated with ‘whiteness’…are automatically ‘better’ or more ‘normal’ than those associated with other racially defined groups”', style: TextStyle(color: Colors.black,fontSize: 16)),
                          TextSpan(text: '(Racial Equity Tools).', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,fontSize: 16)),
                        ]
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage:  AssetImage('assets/images/unit1images/cultR0.jpg'),
                  ),
                  SizedBox(width: 70,),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/unit1images/cultR1.jpg'),
                  ),
                ],
              ),

              SizedBox(height:700, width:double.infinity,child: Unit1SummarySec1()),
            ],
          )
        ],

      ),
    ),
    );

  }
}
