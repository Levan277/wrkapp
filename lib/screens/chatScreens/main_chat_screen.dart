import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:wrkapp/models/user.dart';
import 'package:wrkapp/widgets/chatWidgets/message_textfield.dart';
import 'package:wrkapp/widgets/chatWidgets/single_message.dart';
class MainChatScreen extends StatelessWidget {

final currentUser;
final String friendId;
final String friendUserName;
final String friendImage;

 MainChatScreen({
  required this.currentUser,
  required this.friendId,
  required this.friendImage,
  required this.friendUserName});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Image.network(friendImage, height: 35,),
            ),
            SizedBox(width: 5,),
            Text(friendUserName, style: TextStyle(fontSize: 20.0),),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(25),
              topRight: Radius.circular(25),),
            ),
            child: StreamBuilder(
              stream: FirebaseFirestore.instance.collection('users').doc(currentUser.uid).collection('messages').doc(friendId).collection('chats').orderBy('date',descending: true).snapshots(),
              builder: (context, AsyncSnapshot snapshot){
                if(snapshot.hasData){
                   if(snapshot.data.docs.length < 1){
                     return Center(
                       child: Text('Hello'),
                     );
                   }
                   return ListView.builder(
                       itemCount: snapshot.data.docs.length,
                       reverse: true,
                       physics: BouncingScrollPhysics(),
                       itemBuilder:(context, index){
                         bool isMe = snapshot.data.docs[index]['senderId'] == currentUser.uid;
                         return SingleMessage(message: snapshot.data.docs[index]['message'], isMe: isMe);
                       });
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },

            ),
          ),
          ),
          MessageTextField(currentUser.uid, friendId)
        ],
      ),
    ));
  }
}
