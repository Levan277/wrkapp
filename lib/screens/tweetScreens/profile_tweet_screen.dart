import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wrkapp/app.dart';
import 'package:wrkapp/services/user.dart';
import 'package:wrkapp/services/post.dart';
import 'package:wrkapp/models/users.dart';
import 'package:wrkapp/widgets/tweetWidget/list_users.dart';
import '../../models/user.dart';
import '../../widgets/tweetWidget/list.dart';
import 'package:wrkapp/route/route.dart' as route;


class Profile extends StatefulWidget {
  String uid;

  Profile({Key? key, required this.uid}) : super(key: key);
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  PostService _postService = PostService();
  UserService _userService = UserService();
  @override
  Widget build(BuildContext context) {


     // final String uid = (ModalRoute.of(context)!.settings.arguments ?? FirebaseAuth.instance.currentUser!.uid) as String;
    // final String uid = ModalRoute.of(context)!.settings.arguments as String;

    return MultiProvider(
      providers: [
        StreamProvider.value(value: _postService.getPostsByUser(widget.uid),
        initialData: null,
        ),
        StreamProvider.value(value: _userService.getUserInfo(widget.uid), initialData: null),

        StreamProvider.value(value: _userService.isFollowing(FirebaseAuth.instance.currentUser!.uid, widget.uid), initialData: null),
      ],

        child: Scaffold(
appBar: AppBar(
  title: Text("Profile"),
  backgroundColor: Colors.pink,
),
          backgroundColor: Colors.black,
      body: DefaultTabController(length: 2,
      child: NestedScrollView(headerSliverBuilder: (context, _){
        return [

          SliverList(delegate:SliverChildListDelegate(
            [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Provider.of<UserModel1?>(context)!.profileImageUrl != ''
                            ?
                        CircleAvatar(radius: 30,
                          backgroundImage: NetworkImage(Provider.of<UserModel1>(context).profileImageUrl),
                        ) :

                        Icon(Icons.person, size: 50.0,color: Colors.white,),

                             if(FirebaseAuth.instance.currentUser!.uid == widget.uid)
                        TextButton(onPressed: (){
                          // Navigator.pushNamed(context, route.profile);

                        }, child: Text("",style: TextStyle(color: Colors.white),))
                        else if(FirebaseAuth.instance.currentUser!.uid != widget.uid && !Provider.of<bool>(context))
        TextButton(onPressed: (){
          //write follow action
_userService.followUser(widget.uid);
        }, child: Text("Follow"),)

                             else if(FirebaseAuth.instance.currentUser!.uid != widget.uid && Provider.of<bool>(context))
                                 TextButton(onPressed: (){
                                   //write unfollow action
                                   _userService.unfollowUser(widget.uid);
                                 }, child: Text("UnFollow")),


                      ],
                    ),


                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(Provider.of<UserModel1>(context).username ?? '',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]
          ))
        ];
      }, body: ListPost(post: null,),),)
    ),
    );

  }
}
