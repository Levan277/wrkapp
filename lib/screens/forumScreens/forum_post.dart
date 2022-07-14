import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
class ForumPost extends StatefulWidget {
  const ForumPost({Key? key}) : super(key: key);

  @override
  State<ForumPost> createState() => _ForumPostState();
}

class _ForumPostState extends State<ForumPost> {
    TextEditingController postController = new TextEditingController();
    TextEditingController nameController = new TextEditingController();
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              validator: (value){
                if(value!.isEmpty){
                  return "Please Enter Your Name";
                }
                return null;
              },
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Name...',
              ),
            ),
          ),
          SizedBox(height: 24,),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(

              controller: postController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Message...',
              ),
            ),
          ),
          IconButton(onPressed: () async{
            if(postController.text.isNotEmpty && nameController.text.isNotEmpty){
              await  _firestore.collection('users').doc(FirebaseAuth.instance.currentUser!.uid).collection('forums').add({
                'date':DateTime.now(),
                'post': postController.text,
                'name': nameController.text,
              }
              );
            } else{
                  print("name and message must both be enterec");
            }

          }, icon: Icon(Icons.send)),

        ],
      ),
    ));
  }
}
