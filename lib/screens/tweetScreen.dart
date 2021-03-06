import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wrkapp/screens/tweetScreens/add_tweet.dart';
import 'package:wrkapp/route/route.dart' as route;
import 'package:wrkapp/screens/tweetScreens/profile_tweet_screen.dart';

import '../widgets/tweetWidget/feed.dart';
import '../widgets/tweetWidget/search.dart';

class HomeForum extends StatefulWidget {
  const HomeForum({Key? key}) : super(key: key);

  @override
  State<HomeForum> createState() => _HomeForumState();
}

class _HomeForumState extends State<HomeForum> {
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
            DrawerHeader(child: Text('drawer header'),
            decoration: BoxDecoration(
              color: Colors.blue,

            ),
            ),
            ListTile(title: Text('Profile'),
            onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile(uid: FirebaseAuth.instance.currentUser!.uid)));
            }) ,
            ListTile(title: Text('Edit'),
              onTap: (){
                Navigator.of(context).pushNamed( route.editProfile);
              },),

            ListTile(title: Text('Logout'),
            onTap: (){
             //TODO LOGOUT
            },)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabPressed,
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: ''),
      ],


      ),
      body: _children[_currentIndex],
    );
  }
}
