import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wrkapp/models/post.dart';
import 'package:wrkapp/services/post.dart';
import 'package:wrkapp/widgets/tweetWidget/list.dart';

class Replies extends StatefulWidget {
  PostModel post;
   Replies({required this.post,Key? key}) : super(key: key);

  @override
  State<Replies> createState() => _RepliesState();
}

class _RepliesState extends State<Replies> {
  PostService _postService = PostService();
  String text = '';
  TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context){
  //
  // PostModel args = ModalRoute.of(context)!.settings.arguments as PostModel;
    return FutureProvider.value(value:_postService.getReplies(widget.post) , initialData: null,

        child: Container(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.pink,
            ),
            backgroundColor: Colors.black,
            body: Container(
              child: Column(
                children: [
                  Expanded(child: ListPost(post: widget.post,)),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Form(child: TextFormField(
                          controller: _textController,
                          onChanged: (val){
                            setState((){
                              text = val;
                            });
                          },
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(

                          style: TextButton.styleFrom(primary: Colors.white, backgroundColor: Colors.blue),
                          onPressed: () async{
                            await _postService.reply(widget.post, text);
                            _textController.text = '';
                            setState((){
                              text = '';
                            });
                            }, child: Text("Reply"),

                        ),
                      ],
                    ),
                  )
                ],

              ),
            ),
          ),
        ),
    );

  }
}
