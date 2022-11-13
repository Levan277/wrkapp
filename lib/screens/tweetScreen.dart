import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wrkapp/screens/finalScreens/final_home.dart';
import 'package:wrkapp/screens/login_screen.dart';
import 'package:wrkapp/screens/tweetScreens/add_tweet.dart';
import 'package:wrkapp/route/route.dart' as route;
import 'package:wrkapp/screens/tweetScreens/profile_tweet_screen.dart';
import 'package:lottie/lottie.dart';
import '../widgets/tweetWidget/feed.dart';
import '../widgets/tweetWidget/search.dart';
import 'package:tutorial/tutorial.dart';

class HomeForum extends StatefulWidget {
  const HomeForum({Key? key}) : super(key: key);

  @override
  State<HomeForum> createState() => _HomeForumState();




}

class _HomeForumState extends State<HomeForum> {


  var keyMenu = GlobalKey();
  var keyButton = GlobalKey();
  var keyHome = GlobalKey();
  List<TutorialItem> itens = [];
  @override
  void initState() {
    itens.addAll({
      TutorialItem(
          globalKey: keyMenu,
          touchScreen: true,
          top: 200,
          left: 50,
          children: [
            Text(
              "The three horizontal lined button will display the ability to delete your account, View your posts in the profile section and Explain why a black screen may be seen ",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 100,
            )
          ],
          widgetNext: Text(
            "Tap to Continue",
            style: TextStyle(
              color: Colors.purple,
              fontWeight: FontWeight.bold,
            ),
          ),
          shapeFocus: ShapeFocus.oval),
      TutorialItem(
        globalKey: keyButton,
        touchScreen: true,
        top: 200,
        left: 50,
        children: [
          Text(
            "Add a Post",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 100,
          )
        ],
        widgetNext: Text(
          "Tap to Continue",
          style: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
        shapeFocus: ShapeFocus.oval,
      ),
      TutorialItem(
        globalKey: keyHome,
        touchScreen: true,
        bottom: 50,
        left: 50,
        children: [
          Text(
            "Navigates back to the Main Home Screen",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          )
        ],
        widgetNext: Text(
          "Tap to Continue",
          style: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
        shapeFocus: ShapeFocus.square,
      ),
    });

    Future.delayed(Duration(microseconds: 200)).then((value) {
      Tutorial.showTutorial(context, itens);
    });
    super.initState();
  }
  final FirebaseAuth _auth = FirebaseAuth.instance;
  int _currentIndex = 0;
  final List<Widget> _children = [Feed(), Search(),FinalHome()];

  void onTabPressed(int index){
    setState((){
      _currentIndex = index;
      if(_currentIndex == 2){
        Navigator.pop(context);
        Navigator.pop(context);
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>FinalHome()));
      }
    });

    dispose(){

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        key: keyMenu,

        backgroundColor:  Color(0xffFF8201),
        title: Text('Home'),

      ),
      floatingActionButton: FloatingActionButton(
        key: keyButton,
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Add()));
        },
        child: Icon(Icons.add),

      ),
      


      drawer: Drawer(

        child: ListView(
          children: [
            DrawerHeader(child:Lottie.network('https://assets6.lottiefiles.com/packages/lf20_Vym9qn.json'),
            decoration: BoxDecoration(
              color: Colors.pink,

            ),
            ),
            ListTile(title: Card(child: Text('Profile')),
            onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile(uid: FirebaseAuth.instance.currentUser!.uid)));
            }) ,

            ListTile(title: Card(child: Text('Delete Account')),
                onTap: (){

                  showDialog(context: context, builder: (_)=>CustomAlert(),barrierDismissible: false
                  );


                }) ,
SizedBox(height: 100,),
            Container(
          height: 380,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                gradient: LinearGradient(
                    colors: [Colors.black,Colors.grey],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green,
                    offset: Offset(10,20),
                    blurRadius: 30,
                  )
                ],

              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Viewing A Black Screen?",style: TextStyle(color: Colors.white,fontSize: 24),),
                  ),
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("Start Following Other Users, to See Their Posts!",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),)),
                  ),
                  SizedBox(height: 10,),
                Expanded(child: Padding(padding:EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/ReadingKid.jpg",),))
                ],
              ),
            ),


          //   ListTile(title: Card(child: Text('Logout'),),
          //   onTap: () async{
          // await _auth.signOut();
          //   },)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        key: keyHome,
        backgroundColor:  Color(0xffFF8201),
        onTap: onTabPressed,
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [

        BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home_max_sharp),label: ''),
    ],
    ),






      body: _children[_currentIndex],
    );
  }
}

class CustomAlert extends StatelessWidget {
   CustomAlert({Key? key}) : super(key: key);
final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(title: Text("Are You Sure You Want To Delete Your Account? All Data Will Be Lost. Please Log Out and Sign Back In If Action Does Not Complete!"),
      actions: [
        TextButton(onPressed: () async{

          FirebaseAuth.instance.currentUser!.delete().then((value) => FirebaseAuth.instance.signOut()).then((value) => Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen())));
        }, child: Text("Yes")),
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("No")),
      ],
      elevation: 24.0,

    );
  }
}



