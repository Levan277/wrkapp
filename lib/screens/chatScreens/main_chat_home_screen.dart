import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wrkapp/screens/chatScreens/main_chat_screen.dart';
import 'package:wrkapp/screens/forumScreens/forum_home.dart';
import 'package:wrkapp/widgets/chatWidgets/widgets.dart';
import 'package:wrkapp/route/route.dart' as route;
import 'package:google_fonts/google_fonts.dart';

import '../../constants/theme.dart';

class MainChatHome extends StatefulWidget {
  const MainChatHome({Key? key}) : super(key: key);

  @override
  State<MainChatHome> createState() => _MainChatHomeState();
}

class _MainChatHomeState extends State<MainChatHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ForumHome()));
          }, icon: const Icon(Icons.add)),
          IconButton(onPressed: (){

         Navigator.pushNamed(context, route.liveSupportScreen);
          }, icon: const Icon(Icons.support_agent_rounded))
          //TODO: SIGNOUT
        ],
      ),

      body: StreamBuilder(
        stream:FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser!.uid).collection('messages').snapshots(),
        builder: (context, AsyncSnapshot snapshot){
           if(snapshot.hasData){
             if(snapshot.data.docs.length < 1){
               return const Center(
                 child: Text("No Chats Available"),
               );
             }
             return ListView.builder(
                 itemCount: snapshot.data.docs.length,
                 itemBuilder:(context, index){
                   var friendId = snapshot.data.docs[index].id;
                   var lastMsg = snapshot.data.docs[index]['last_msg'];
                   return FutureBuilder(
                       future: FirebaseFirestore.instance.collection('users').doc(friendId).get(),
                       builder: (context, AsyncSnapshot asyncSnapshot){
                         if(asyncSnapshot.hasData){
                           var friend = asyncSnapshot.data;
                           return ListTile(
                             leading: CircleAvatar(
                               backgroundImage: NetworkImage(friend['photoUrl']),
                               radius: 24,
                             ),
                             title: Text(friend['username']),
                             subtitle: Container(
                               child: Text("$lastMsg", style: GoogleFonts.montserrat(color: Colors.grey), overflow: TextOverflow.ellipsis,),
                             ),
                             onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context) => MainChatScreen(
                                   currentUser: FirebaseAuth.instance.currentUser,
                                   friendId: friend['uid'],
                                   friendImage: friend['photoUrl'],
                                   friendUserName: friend['username']),
                                 ),
                               );
                             },
                           );
                         }
                         return const LinearProgressIndicator();
                       });
                 });
           }
           return const Center(
             child: CircularProgressIndicator(),
           );
        },
      ),
      bottomNavigationBar:const BottomNavBar(),
    ),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color:  Colors.transparent,
      elevation: 0,
      margin: const EdgeInsets.all(0),
      child: SafeArea(
        top: false,
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            const  _NavigationBarItem(
                index: 0,
                lable: '',
              ),
          const    _NavigationBarItem(
                index: 1,
                lable: '',


              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GlowingActionButton(
                  color: AppColors.secondary,
                  icon: CupertinoIcons.add,
                  onPressed: () {
                    Navigator.pushNamed(context,route.searchContactPage);
                  },
                ),
              ),
            const  _NavigationBarItem(
                index: 2,
                lable: '',



              ),
           const   _NavigationBarItem(
                index: 3,
                lable: '',



              ),
            ],
          ),
        ),
      ),
    );
  }
}



class _NavigationBarItem extends StatelessWidget {
  const _NavigationBarItem({
    Key? key,
    required this.index,
    required this.lable,

    this.isSelected = false,

  }) : super(key: key);

  final int index;
  final String lable;

  final bool isSelected;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {

      },
      child: SizedBox(
        width: 70,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            const SizedBox(
              height: 8,
            ),
            Text(
              lable,
              style: isSelected
                  ?  GoogleFonts.montserrat(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: AppColors.secondary,
              )
                  :  GoogleFonts.montserrat(fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }
}


