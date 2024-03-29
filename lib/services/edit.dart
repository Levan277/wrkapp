
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:wrkapp/services/user.dart';

class Edit extends StatefulWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
 UserService _userService = UserService();
  File? _profileImage;
   File? _bannerImage;
  final picker = ImagePicker();
  String username = '';

  Future getImage(int type) async{
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    setState((){
      if(pickedFile != null && type == 0){
        _profileImage = File(pickedFile.path);
      }
      if(pickedFile != null && type == 1){
        _bannerImage = File(pickedFile.path);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [TextButton(onPressed: ()async{
        await _userService.updateProfile(_bannerImage!, _profileImage!, username);
        Navigator.pop(context);
      }, child: Text("Save", style: TextStyle(color: Colors.black),))],),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 50),
        child: Form(
          child: Column(
            children: [
                TextButton(onPressed: ()=>getImage(0), child: _profileImage == null ? Icon(Icons.person) : Image.file(_profileImage!, height: 100,),
                ),

              TextFormField(
                onChanged: (val) => setState((){
                  username = val;
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
