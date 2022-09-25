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

class HomeForum extends StatefulWidget {
  const HomeForum({Key? key}) : super(key: key);

  @override
  State<HomeForum> createState() => _HomeForumState();
}

class _HomeForumState extends State<HomeForum> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  int _currentIndex = 0;
  final List<Widget> _children = [Feed(), Search()];

  void onTabPressed(int index){
    setState((){
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xffFF8201),
        title: Text('Home'),

      ),
      floatingActionButton: FloatingActionButton(
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


          //   ListTile(title: Card(child: Text('Logout'),),
          //   onTap: () async{
          // await _auth.signOut();
          //   },)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:  Color(0xffFF8201),
        onTap: onTabPressed,
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: ''),
          BottomNavigationBarItem(icon: IconButton(icon: Icon(Icons.home_work_sharp),onPressed: (){Navigator.
          push(context, MaterialPageRoute(builder: (context)=>FinalHome()));

          },),label: ''),
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



