


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wrkapp/route/route.dart' as route;
import 'package:wrkapp/services/replies.dart';
import '../../models/post.dart';
import '../../models/users.dart';
import '../../services/post.dart';


class ItemPost extends StatefulWidget {
  const ItemPost({
    Key? key,
    required this.post,
    required this.snapshotUser,
    required this.snapshotLike,
  }) : super(key: key);

  final PostModel post;
  final AsyncSnapshot<UserModel1> snapshotUser;
  final AsyncSnapshot<bool> snapshotLike;

  @override
  State<ItemPost> createState() => _ItemPostState();
}

class _ItemPostState extends State<ItemPost> {
  PostService _postService = PostService();
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text("Retweet"),
              SizedBox(height: 20,),
              Row(
                children: [
                  widget.snapshotUser.data!.profileImageUrl != '' ?
                  CircleAvatar(radius: 20,
                      backgroundImage: NetworkImage(widget.snapshotUser.data!.profileImageUrl)
                  ): Icon(Icons.person, size: 40,),
                  SizedBox(width: 10,),
                  Text(widget.snapshotUser.data!.username)
                ],
              ),
            ],
          ),

        ),
        subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(widget.post.text),
        SizedBox(height: 20,),
        Text(widget.post.timestamp!.toDate().toString()),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
        Row(
        children: [
        IconButton(
          onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Replies(post: widget.post)));
          }
          ,
        icon: Icon(
        false? Icons.cancel
            : Icons.chat_bubble_outline,
          color: Colors.blue,
          size: 30.0,

        ),
        ),
        // onPressed: () => _postService.retweet(widget.post, false)),
    Text('0'),
    ],
    ),
    Row(
    children: [
    IconButton(
    icon: Icon(

    widget.snapshotLike.data! ? Icons.favorite
        : Icons.favorite_border,
    color: Colors.blue,
    size: 30.0,),

    onPressed: (){
     _postService.likePost(widget.post, widget.snapshotLike.data!);
    }),
    Text(widget.post.likesCount.toString())
    ],
    ),

    ],),

    ],
    ),

    ),
    Divider(),
    ],
    ),
    );
  }
}
