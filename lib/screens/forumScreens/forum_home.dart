import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wrkapp/app.dart';
import 'package:wrkapp/screens/forumScreens/forum_post.dart';
import 'package:wrkapp/widgets/forumWidgets/forum_message.dart';

class ForumHome extends StatefulWidget {
  const ForumHome({Key? key}) : super(key: key);

  @override
  State<ForumHome> createState() => _ForumHomeState();
}

class _ForumHomeState extends State<ForumHome> {
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold
      (
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Forum'),
        actions: [
          IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ForumPost()));
          }, icon: Icon(Icons.add)),
        ],
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('users').doc(_auth.currentUser!.uid).collection('forums').snapshots(),
          builder: (context, AsyncSnapshot snapshot){
            if(snapshot.hasData){
              if(snapshot.data.docs.length < 1){
                return Center(
                  child: Text('posts'),
                );
              }
              return ListView.builder(
                  itemCount: snapshot.data.docs.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder:(context, index){
                   return ForumMessage(post: snapshot.data.docs[index]['post'], name: snapshot.data.docs[index]['name'],);
                  });
            }
            return Center(
              child: CircularProgressIndicator(),
            );
      }),

    )
    );
  }
}
