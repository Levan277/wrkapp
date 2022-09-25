import 'package:flutter/material.dart';
import 'package:wrkapp/services/post.dart';
import 'package:bad_words/bad_words.dart';
class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  final PostService _postService = PostService();
  String text = "";
  final filter = Filter();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Post'),
        actions: [
          ElevatedButton(onPressed: () async{
            if(filter.isProfane(text)){
              print("put a nickle in the swear jar!");
            }
            else{
              await _postService.savePost(text);
              Navigator.pop(context);
            }

          }, child: Text('Post'),)
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
        child: new Form(child: TextFormField(
          onChanged: (val){
            setState((){
              text = val;
            });
          },
        )

        ),
      ),
    );
  }
}
