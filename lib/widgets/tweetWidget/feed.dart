import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wrkapp/services/post.dart';
import 'package:wrkapp/widgets/tweetWidget/list.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
   PostService _postService = PostService();
  @override
  Widget build(BuildContext context) {
    return FutureProvider.value(value: _postService.getFeed(), initialData: null,
    child: Scaffold(body: ListPost(post: null,),),
    );
  }
}
