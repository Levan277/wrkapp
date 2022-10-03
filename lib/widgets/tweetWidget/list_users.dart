import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wrkapp/models/users.dart';
import 'package:wrkapp/route/route.dart' as route;
import 'package:wrkapp/screens/tweetScreens/profile_tweet_screen.dart';
import '../../models/user.dart';
import '../../services/user.dart';
class ListUsers extends StatefulWidget {
  const ListUsers({Key? key}) : super(key: key);

  @override
  State<ListUsers> createState() => _ListUsersState();
}

class _ListUsersState extends State<ListUsers> {

  @override
  Widget build(BuildContext context) {
    List<UserModel1> users = Provider.of<List<UserModel1>?>(context) ?? [];
    // final users = Provider.of<List<UserModel1>>(context) ?? [];
    return ListView.builder(
        shrinkWrap: true,
        itemCount: users.length,
        itemBuilder: (context, index){
          final user = users[index];
          return InkWell(
            onTap: () =>
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Profile(uid: user.uid))),

            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    // user.profileImageUrl != '' ?
                    //     CircleAvatar(radius: 20,
                    //     backgroundImage: NetworkImage(user.profileImageUrl),
                    //     ) :
                    Icon(Icons.person, size: 30.0,),
                    SizedBox(width: 10,),
                    Text(user.username),
                  ],
                ),),
                 const Divider(thickness: 1),
              ],
            ),
          );
        }
    );
  }
}
