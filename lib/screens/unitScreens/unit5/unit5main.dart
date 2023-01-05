import 'package:flutter/cupertino.dart';
import 'package:flutter/materiaL.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:wrkapp/Audio/unit5_audio/summary_unit5.dart';
import 'package:wrkapp/screens/finalScreens/final_home.dart';
import 'package:wrkapp/screens/support_screens/support_home_screen.dart';
import 'package:wrkapp/screens/tweetScreen.dart';
import '../../../widgets/Asset_player.dart';
import '../../../widgets/hyperlink_widget.dart';
import 'package:expandable/expandable.dart';


class Unit5Main extends StatefulWidget {
  const Unit5Main({Key? key}) : super(key: key);

  @override
  State<Unit5Main> createState() => _Unit5MainState();
}

class _Unit5MainState extends State<Unit5Main> {
 bool _isOpen = false;
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
        backgroundColor:  Color(0xffFF8201),
        centerTitle: true,
        title: Text("Unit 5"),

      ),
      body: ListView(
        children: [
          Column(

            children: [

              Container(
                width: double.infinity,
                height: 100,
                color: Colors.orange,
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
                                  child: Text('Section 1: Take Action',style: TextStyle(fontSize: 15),),
                                  onPressed: () {

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
                padding: EdgeInsets.all(12),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("What makes a good ally?",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),
              ),
          
              Container(

                padding: EdgeInsets.all(12.0),
                child: RichText(
                  text:  TextSpan(
                      children: [
                        TextSpan(text: 'Try starting with these: \n', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        TextSpan(text: '\t\t\t1. Educate yourself\n ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        TextSpan(text: '\t\t\t2. Confront your own racist beliefs/ideas\n', style: TextStyle(color: Colors.black, fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        TextSpan(text: '\t\t\t3. Don’t rely on racialized people for all answers\n ', style: TextStyle(color: Colors.black, fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        TextSpan(text: '\t\t\t4. Follow the lead of racialized people\n   ', style: TextStyle(color: Colors.black, fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        TextSpan(text: '\t\t\t5. Hold your friends/family accountable (E.A.R.S) \n ', style: TextStyle(color: Colors.black, fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        TextSpan(text: '\t\t\t6. Have intentional conversations with people about racism\n    ', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        TextSpan(text: '\t\t\t7. Stop saying “I’m not racist”\n  ', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),
                        TextSpan(text: '\t\t\t8. Don’t forget self-care (so you don’t get burnt out)\n   ', style: TextStyle(color: Colors.black,fontSize: 16),children: [WidgetSpan(child: SizedBox(height: 30,))]),


                      ]
                  ),
                ),
              ),
              Container(child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("Want more info? Click Below",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          Center(child: HyperLinkText(text: 'Mashable', urlText: 'https://mashable.com/article/how-to-be-antiracist',)),
                          Center(child: HyperLinkText(text: 'University of Michigan’s ', urlText: 'https://mesa.umich.edu/article/10-ways-be-anti-racist',)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              ),

              Padding(
                padding: EdgeInsets.all(12),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("What interests you? ",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                    ),),
                  ),
                ),
              ),
           

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("Explore the topics that you are most passionate about & want to explore. ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              ),

           ExpansionPanelList.radio(

             children: [
               ExpansionPanelRadio(headerBuilder:(context,isOpen){
                 return Text("Racism against Indigenous Peoples ");

               },

                     value: '1',
                 body: ListTile(

               title:  Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: RichText(text: TextSpan(children: [
                           TextSpan(text: 'Topic summary:', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                           TextSpan(text: 'This topic looks specifically at racism against Indigenous peoples in Canada. Indigenous peoples have faced countless acts of discrimination and racism in the past and still today. And, while the government has made promises to do something about it, little has been done. \n', style: TextStyle(color: Colors.black,fontSize: 16)),
                           TextSpan(text: 'Learn More About:  \n', style: TextStyle(color: Colors.black,fontSize: 16)),
                           TextSpan(text: '\t\t\t1. Housing Issues on reserves (The Government of Canada)  \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Evaluation of On-Reserve Housing”\n', urlText: 'https://www.rcaanc-cirnac.gc.ca/eng/1506018589105/1555328867826',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“First Nations housing in dire need of overhaul” (CBC, Stastna)\n ', urlText: 'https://www.cbc.ca/news/canada/first-nations-housing-in-dire-need-of-overhaul-1.981227',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“8 Things You Need to Know About On-Reserve Housing Issues” (Indigenous Corporate Training) \n ', urlText: 'https://www.ictinc.ca/blog/8-things-you-need-to-know-about-on-reserve-housing-issues',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Housing on Reserves” (Open Library) \n ', urlText: 'https://ecampusontario.pressbooks.pub/indigenouseconomics244/chapter/chapter-21-housing-on-reserves/',))]),
                           TextSpan(text: '\t\t\t2. Suicide and youth/children’s deaths  \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Indigenous children suicides not classified as suicide…” (APTN News) \n ', urlText: 'https://www.aptnnews.ca/national-news/indigenous-children-suicides-not-classified-as-suicide-coroners-offices/',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Suicide among First Nations people, Métis and Inuit…” (The Government of Canada)  \n ', urlText: 'https://www150.statcan.gc.ca/n1/pub/99-011-x/99-011-x2019001-eng.htm',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Indigenous boys need more support to prevent suicide, homicide…” (CBC, Samson)  \n ', urlText: 'https://www.cbc.ca/news/canada/manitoba/manitoba-child-advocate-prevent-indigenous-boys-dying-by-suicide-homicide-1.6236374',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Why are we losing so many Indigenous children to suicide?” (The Conversation, Dudgeon & Hirvonen)\n ', urlText: 'https://theconversation.com/why-are-we-losing-so-many-indigenous-children-to-suicide-114284',))]),
                           TextSpan(text: '\t\t\t3. Child-welfare  \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Indigenous Children and the Child Welfare System in Canada” (National Collaborating Centre for Aboriginal Health) \n ', urlText: 'https://www.nccih.ca/docs/health/FS-ChildWelfareCanada-EN.pdf',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Funding for Indigenous child welfare services…” (Global News, Bains)  \n ', urlText: 'https://globalnews.ca/news/8720204/bc-child-welfare-indigenous/',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Why Canada is reforming indigenous foster care” (BBC, Goffin)  \n ', urlText: 'https://www.bbc.com/news/world-us-canada-57646170',))]),
                           TextSpan(text: '\t\t\t4. Missing Indigenous women  \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Missing and Murdered Aboriginal Women” (CBC) \n ', urlText: 'https://www.cbc.ca/missingandmurdered/',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Murdered and Missing Indigenous Women and Girls” (Femicide in Canada)  \n ', urlText: 'http://www.femicideincanada.ca/about/history/indigenous',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Advocates frustrated with inaction over missing and murdered Indigenous women” (CTV News, Macyshon)\n ', urlText: 'https://www.ctvnews.ca/canada/advocates-frustrated-with-inaction-over-missing-and-murdered-indigenous-women-1.5932724',))]),
                           TextSpan(text: '\t\t\t5. Culture erasure \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Canada’s hidden past: the commodification and erasure of First Nations culture” (UBC Blogs, Tocher) \n ', urlText: 'https://blogs.ubc.ca/102localglobalfeminist/2017/03/26/610/',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“The erasure of Indigenous thought in foreign policy” (Open Canada, King)  \n ', urlText: 'https://opencanada.org/erasure-indigenous-thought-foreign-policy/',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Canada’s Grim Legacy of Cultural Erasure…” (New York Times, Austen)  \n ', urlText: 'https://www.nytimes.com/2021/07/05/world/canada/Indigenous-residential-schools-photos.html',))]),




                         ])),
                       ),



                     )
                   ],
                 ),
               ),

               ),


                          ExpansionPanelRadio(headerBuilder:(context,isOpen){
                 return Text("Police brutality ");

               },




                 value: '2',
                 body: ListTile(
                   title:  Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: RichText(text: TextSpan(children: [
                           TextSpan(text: 'Topic summary:', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                           TextSpan(text: ' “Police brutality refers to the excessive use of force by a police officer against a victim or victims that is deemed to go beyond the level required to sustain life, avoid injury, or control a situation” (VeryWell Mind).  \n', style: TextStyle(color: Colors.black,fontSize: 16)),
                           TextSpan(text: 'Learn More About:  \n', style: TextStyle(color: Colors.black,fontSize: 16)),
                           TextSpan(text: '\t\t\t1. Police brutality (general resources)  \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Toronto police use more force against ethnic minorities” (BBC, Honderich) \n', urlText: 'https://www.bbc.com/news/world-us-canada-61818396',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Police Brutality in Canada…” (Yellowhead Institute, Stelkia) \n ', urlText: 'https://yellowheadinstitute.org/2020/07/15/police-brutality-in-canada-a-symptom-of-structural-racism-and-colonial-violence/',))]),
                           TextSpan(text: '\t\t\t2. Police brutality against Indigenous Peoples   \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“The Indigenous people killed by Canada’s police” (Al Jazeera) \n ', urlText: 'https://www.aljazeera.com/features/2021/3/24/the-indigenous-people-killed-by-canadas-police',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Police brutality against Indigenous women in Canada” (The Indigenous Foundation) \n ', urlText: 'https://www.theindigenousfoundation.org/articles/policebrutality',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Mistrust…between police, Indigenous people...” (CBC, Allen)  \n ', urlText: 'https://www.cbc.ca/news/canada/manitoba/aboriginal-justice-inquiry-policing-1.6264154',))]),
                           TextSpan(text: '\t\t\t3. Police brutality against Black people    \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Canada Has Race-Based Police Violence Too…” (The Tyee, Simpson)   \n ', urlText: 'https://thetyee.ca/Analysis/2020/06/02/Canada-Race-Based-Violence/',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Timeline of racial discrimination…of Black persons” (Ontario Human Rights Commission)  \n ', urlText: 'https://www.ohrc.on.ca/en/timeline-tps',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Black people are more likely to be arrested…” (CNN, Andrew)   \n ', urlText: 'https://www.cnn.com/2020/08/12/world/toronto-police-racism-trnd',))]),
                           TextSpan(text: '\t\t\t3. Effects of police brutality  \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“The Psychology Behind Police Brutality” (VeryWell Mind, Cuncic) \n ', urlText: 'https://www.verywellmind.com/the-psychology-behind-police-brutality-5077410',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Police violence: Physical and mental health impacts on Black Americans” (Medical News Today, Sandoiu)  \n ', urlText: 'https://www.medicalnewstoday.com/articles/police-violence-physical-and-mental-health-impacts-on-black-americans',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Why Police Brutality Is a Public Health Issue” (Self, Todd) \n ', urlText: 'https://www.self.com/story/police-brutality-public-health-issue',))]),





                         ])),
                       )
                     ],
                   ),
                 ),

               ),


               //panel3
               ExpansionPanelRadio(headerBuilder:(context,isOpen){
                 return Text("Racism in Education system  ");

               },




                 value: '3',
                 body: ListTile(
                   title:  Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: RichText(text: TextSpan(children: [
                           TextSpan(text: 'Topic summary:', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                           TextSpan(text: 'There are many areas of education systems in Canada that make the lives of racialized people difficult. Among teachers who ignore and filter racialized people out of the education system, there are also policies and practices within educational institutions that allow for racial discrimination.  \n', style: TextStyle(color: Colors.black,fontSize: 16)),
                           TextSpan(text: 'Learn More About:  \n', style: TextStyle(color: Colors.black,fontSize: 16)),
                           TextSpan(text: '\t\t\t1. Issues with current history curriculums  \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Two Indigenous scholars read a history textbook...” (Toronto Star, Francis)  \n', urlText: 'https://www.thestar.com/news/gta/2021/06/26/two-indigenous-scholars-read-a-history-textbook-chapter-on-residential-schools-this-is-what-they-would-change.html',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“A better place to Live: School history textbooks...” (Montgomery) \n ', urlText: 'https://www.uregina.ca/education/assets/docs/pdf/faculty-staff/TalkingTruthToPower-chapter.pdf/',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Kids textbook whitewashes Canadian history…” (Today’s Parents, Dimaline)  (Montgomery) \n ', urlText: 'https://www.todaysparent.com/blogs/kids-textbook-whitewashes-canadian-history-and-i-wish-i-were-more-surprised/',))]),
                           TextSpan(text: '\t\t\t3. Discrimination against racialized people in schools    \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Half of Canadian kids witness ethnic, racial bullying at school…” (The University of British Columbia, Fletcher)  \n ', urlText: 'https://news.ubc.ca/2021/10/19/half-of-canadian-kids-witness-ethnic-racial-bullying-at-school-study/',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“…Concerns about racial profiling in education” (Ontario Human Rights Commission)  \n ', urlText: 'https://www.ohrc.on.ca/en/under-suspicion-concerns-about-racial-profiling-education',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Canadian Education Is Steeped in Anti-Black Racism” (The Walrus, Maynard)  \n ', urlText: 'https://thewalrus.ca/canadian-education-is-steeped-in-anti-black-racism/',))]),
                           TextSpan(text: '\t\t\t3. Lack of quality education in Indigenous communities    \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Education” (United Nations)  \n ', urlText: 'https://www.un.org/development/desa/indigenouspeoples/mandated-areas1/education.html',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Education of Indigenous Peoples in Canada” (The Canadian Encyclopedia, McCue)  \n ', urlText: 'https://www.thecanadianencyclopedia.ca/en/article/aboriginal-people-education',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Indigenous peoples have a right to quality education…” (World Economic Forum, Cosentino)\n ', urlText: 'https://www.weforum.org/agenda/2016/08/indigenous-people-have-a-right-to-quality-education-but-so-far-we-ve-failed-them/',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Why fixing First Nations education remains so far out of reach” (Maclean’s, McMahon) \n ', urlText: 'https://www.macleans.ca/news/canada/why-fixing-first-nations-education-remains-so-far-out-of-reach/',))]),




                         ])),
                       )
                     ],
                   ),
                 ),

               ),


               ExpansionPanelRadio(headerBuilder:(context,isOpen){
                 return Text("Inequalities in Healthcare systems  ");

               },




                 value: '4',
                 body: ListTile(
                   title:  Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: RichText(text: TextSpan(children: [
                           TextSpan(text: 'Topic summary:', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                           TextSpan(text: 'This topic explores discrimination within Canada’s healthcare systems. Too often, racialized people are treated differently and poorly when interacting with healthcare systems. Additionally, due to the lack of healthcare resources in predominately racialized areas, racialized people tend to face more health issues (physical and mental).\n', style: TextStyle(color: Colors.black,fontSize: 16)),
                           TextSpan(text: 'Learn More About:  \n', style: TextStyle(color: Colors.black,fontSize: 16)),
                           TextSpan(text: '\t\t\t1. Racialized people and COVID-19 pandemic  \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“COVID-19 race data collection in Canada” (Government of Canada)  \n', urlText: 'https://www.canada.ca/en/public-health/services/reports-publications/canada-communicable-disease-report-ccdr/monthly-issue/2021-47/issue-7-8-july-august-2021/covid-19-race-data-collection-canada.html',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Tracking COVID-19 Through Race-Based Data” (Ontario Health)  \n ', urlText: 'https://www.ontariohealth.ca/sites/ontariohealth/files/2021-08/Tracking%20COVID%2019%20Through%20Race%20Based%20Data-EN.pdf',))]),
                           TextSpan(text: '\t\t\t2. Black people & healthcare systems    \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Black women’s health matters” (BC Medical Journal, Dunne)  \n ', urlText: 'https://bcmj.org/premise/black-womens-health-matters',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Navigating systemic racism in Canadian healthcare” (Healthy Debate, Iroanyah & Cyr)  \n ', urlText: 'https://healthydebate.ca/2020/07/topic/navigating-systemic-racism/',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“…Canada to collect better data on Black maternal health” (CBC, Adhopia). \n ', urlText: 'https://www.cbc.ca/news/health/canada-black-maternal-health-1.6075277',))]),
                           TextSpan(text: '\t\t\t3. Health issues of Indigenous peoples   \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '““Health of Indigenous Peoples in Canada” (The Canadian Encyclopedia, Burnett)   \n ', urlText: 'https://www.thecanadianencyclopedia.ca/en/article/aboriginal-people-health',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: ' “Social Determinants of Health” (National Collaborating Centre for Indigenous Health)  \n ', urlText: 'https://www.nccih.ca/docs/determinants/FS-AccessHealthServicesSDOH-2019-EN.pdf',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Indigenous peoples have a right to quality education…” (World Economic Forum, Cosentino)\n ', urlText: 'https://www.weforum.org/agenda/2016/08/indigenous-people-have-a-right-to-quality-education-but-so-far-we-ve-failed-them/',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Why do Indigenous people in Canada face worse health outcomes…” (The Varsity, Rammohan)  \n ', urlText: 'https://thevarsity.ca/2019/09/15/why-do-canadas-indigenous-people-face-worse-health-outcomes-than-non-indigenous-people/',))]),
                         ])),
                       )
                     ],
                   ),
                 ),

               ),


               //panel 5

               ExpansionPanelRadio(headerBuilder:(context,isOpen){
                 return Text("Racism in media/literature ");

               },




                 value: '5',
                 body: ListTile(
                   title:  Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: RichText(text: TextSpan(children: [
                           TextSpan(text: 'Topic summary:', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                           TextSpan(text: ' It is only until now that literature and media are accepting the diverse world we live in, though there is still much work to be done. Unfortunately, a lot of the time, racialized people are portrayed as only the stereotypes attributed to them. With these dangerous illustrations of racialized people, we start to make assumptions of them based on their stereotypes. \n', style: TextStyle(color: Colors.black,fontSize: 16)),
                           TextSpan(text: 'Learn More About:  \n', style: TextStyle(color: Colors.black,fontSize: 16)),
                           TextSpan(text: '\t\t\t1. Lack of diversity in literature/media (ex. T.V., children’s books)  \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“The Lack of Diversity in Film” (The Hornet Newspaper)  \n', urlText: 'https://thehornetonline.com/2021/11/11/the-lack-of-diversity-in-film/',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“The Ongoing Problem of Race in Y.A.” (The Atlantic, Doll)  \n ', urlText: 'https://www.theatlantic.com/culture/archive/2012/04/ongoing-problem-race-y/328841/',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“The Importance of Representation in Books” (VeryWell Mind, Jagoo)  \n ', urlText: 'https://www.verywellmind.com/the-importance-of-representation-5076060',))]),
                           TextSpan(text: '\t\t\t2. Stereotyping of racialized people in media/literature   \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“How racial stereotypes in popular media affect people…” (Scholars, Yuen)  \n ', urlText: 'https://scholars.org/contribution/how-racial-stereotypes-popular-media-affect-people-and-what-hollywood-can-do-become',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“…How Media Influences Our Views on Racism” (University of Nevada, Usufzy)  \n ', urlText: 'https://www.unlv.edu/news/article/unpacking-how-media-influences-our-views-racism',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '““Rooting out racism in children’s books” (The Conversation, Huber)  \n ', urlText: 'https://theconversation.com/rooting-out-racism-in-childrens-books-149432',))]),
                           TextSpan(text: '\t\t\t3. How racialized people are portrayed in the news/newsrooms   \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Lack of racial diversity in media is a form of oppression” (Toronto Star, Paradkar)    \n ', urlText: 'https://www.thestar.com/news/gta/2016/11/04/lack-of-racial-diversity-in-media-is-a-form-of-oppression-paradkar.html',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: ' “Journalists give industry mixed reviews on newsroom diversity…” (Pew Research Center, Gottfried et al.) \n ', urlText: 'https://www.pewresearch.org/journalism/2022/06/14/journalists-give-industry-mixed-reviews-on-newsroom-diversity-lowest-marks-in-racial-and-ethnic-diversity/',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Canadian Media Incapable of Covering Race” (New Canadian Media, Miller) \n ', urlText: 'https://newcanadianmedia.ca/call-it-racism/',))]),
                         ])),
                       ),
                     ],
                   ),
                 ),

               ),


//panel 6
               ExpansionPanelRadio(headerBuilder:(context,isOpen){
                 return Text("Workplace discrimination (unemployment rates of racialized people, harassment and racism against racialized employees, hair discrimination) ");

               },




                 value: '6',
                 body: ListTile(
                   title:  Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: RichText(text: TextSpan(children: [
                           TextSpan(text: 'Topic summary:', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                           TextSpan(text: 'Sometimes employers give out jobs based on a person’s race versus their qualifications. There are many discriminatory practices that are accepted in organizations that allow for racialized people to be overlooked and mistreated in workplaces. \n', style: TextStyle(color: Colors.black,fontSize: 16)),
                           TextSpan(text: 'Learn More About:  \n', style: TextStyle(color: Colors.black,fontSize: 16)),
                           TextSpan(text: '\t\t\t1. Unemployment rates of racialized people  \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“unemployment data show higher rates for Black, Arab and South Asian Canadians” (CBC) \n', urlText: 'https://www.cbc.ca/news/canada/british-columbia/race-based-unemployment-data-pandemic-1.5679127',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“…Race, gender and the Canadian labour market” (Canadian Centre for Policy Alternatives)  \n ', urlText: 'https://monitormag.ca/shorthand/by-the-numbers-race-gender-and-the-canadian-labour-market-200221160640/index.html',))]),
                           TextSpan(text: '\t\t\t2. Harassment and racism against racialized employees   \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Discrimination Against Black Canadians in Employment” (ISIKO, Francis)  \n ', urlText: 'https://www.isikoresolutions.com/discrimination-against-black-canadians-in-employment',))]),
                           TextSpan(text: '\t\t\t3. Bad hiring practices     \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Study finds ‘racial and ethnic discrimination’ in hiring process in Canada, elsewhere” (Global News, Somani)\n ', urlText: 'https://globalnews.ca/news/5678054/racial-ethnic-discrimination-hiring-interview-callbacks/',))]),
                           TextSpan(text: '\t\t\t4. Hair & cultural/religious clothing discrimination      \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Quebec’s Ban on Religious Clothing is Chilling” (Maimona)  \n ', urlText: 'https://www.hrw.org/news/2019/06/24/quebecs-ban-religious-clothing-chilling-be-us-you-must-dress-us',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Race-Based Hair Discrimination” (Elle Canada, Jackson) \n ', urlText: 'https://www.ellecanada.com/beauty/hair/race-based-hair-discrimination',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Black people deal with hair discrimination everywhere” (Toronto Star, Singh & Francis)  \n ', urlText: 'https://www.thestar.com/news/gta/2022/05/19/black-people-deal-with-hair-discrimination-everywhere-will-canada-take-a-cue-from-the-uss-crown-act-and-end-it.html',))]),
                         ])),
                       ),
                     ],
                   ),
                 ),

               ),


               //panel 7

               ExpansionPanelRadio(headerBuilder:(context,isOpen){
                 return Text("What work is already being done?  ");

               },




                 value: '7',
                 body: ListTile(
                   title:  Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: RichText(text: TextSpan(children: [
                           TextSpan(text: 'Here is a very broad list of resources providing information about change that’s already in the making (Disclaimer: this is NOT an extensive list): \n', style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '1. “20 Canadian Anti-Racism Organizations You Can Support” (Global Citizen, Marchildon)  \n', urlText: 'https://www.globalcitizen.org/en/content/anti-racism-organizations-canada/',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '2. “General Resources on Anti-racism” (Public Service Alliance of Canada)   \n ', urlText: 'https://psacunion.ca/general-resources-anti-racism',))]),
                           TextSpan(text: '\t\t\t2. Harassment and racism against racialized employees   \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Discrimination Against Black Canadians in Employment” (ISIKO, Francis)  \n ', urlText: 'https://www.isikoresolutions.com/discrimination-against-black-canadians-in-employment',))]),
                           TextSpan(text: '\t\t\t3. Bad hiring practices     \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Study finds ‘racial and ethnic discrimination’ in hiring process in Canada, elsewhere” (Global News, Somani)\n ', urlText: 'https://globalnews.ca/news/5678054/racial-ethnic-discrimination-hiring-interview-callbacks/',))]),
                           TextSpan(text: '\t\t\t4. Hair & cultural/religious clothing discrimination      \n', style: TextStyle(color: Colors.black,fontSize: 16),),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Quebec’s Ban on Religious Clothing is Chilling” (Maimona)  \n ', urlText: 'https://www.hrw.org/news/2019/06/24/quebecs-ban-religious-clothing-chilling-be-us-you-must-dress-us',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Race-Based Hair Discrimination” (Elle Canada, Jackson) \n ', urlText: 'https://www.ellecanada.com/beauty/hair/race-based-hair-discrimination',))]),
                           TextSpan(text: '\t\t\t\t\t \n', style: TextStyle(color: Colors.black,fontSize: 6),children: [WidgetSpan(child: HyperLinkText(text: '“Black people deal with hair discrimination everywhere” (Toronto Star, Singh & Francis)  \n ', urlText: 'https://www.thestar.com/news/gta/2022/05/19/black-people-deal-with-hair-discrimination-everywhere-will-canada-take-a-cue-from-the-uss-crown-act-and-end-it.html',))]),
                         ])),
                       ),
                     ],
                   ),
                 ),

               ),
             ],
           ),



            ],
          )
        ],

      ),
    ),
    );

  }
}
