import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wrkapp/models/post.dart';
import 'package:wrkapp/services/post.dart';
import 'package:wrkapp/services/user.dart';
import 'package:wrkapp/route/route.dart' as route;
import '../../models/users.dart';
import 'item.dart';


class ListPost extends StatefulWidget {
  PostModel? post;
   ListPost({ this.post,Key? key}) : super(key: key);

  @override
  State<ListPost> createState() => _ListPostState();
}

class _ListPostState extends State<ListPost> {
  PostService _postService = PostService();
  UserService _userService = UserService();
  @override
  Widget build(BuildContext context) {
    List<PostModel> posts = Provider.of<List<PostModel>?>(context) ?? [];
 if(widget.post != null){
   posts.insert(0, widget.post!);
 }
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index){
        final post = posts[index];
        return StreamBuilder(
            stream: _userService.getUserInfo(post.creator),
            builder: (BuildContext context, AsyncSnapshot<UserModel1> snapshotUser){
                 if(!snapshotUser.hasData){
                   return Center(child: CircularProgressIndicator(),);
                 }

                 //stream builder to get user like

                 return StreamBuilder(
                     stream: _postService.getCurrentUserLike(post),
                     builder: (BuildContext context, AsyncSnapshot<bool> snapshotLike){
              if(!snapshotLike.hasData){
              return Center(child: CircularProgressIndicator(),);
              }

              return ItemPost(snapshotUser: snapshotUser, post: post, snapshotLike: snapshotLike,);
              });
            });


      },
    );

  }
}
