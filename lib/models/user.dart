import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';

class UserModel{
  String username;
  String email;
  String uid;

  UserModel({required this.username, required this.email, required this.uid});

  factory UserModel.fromJson(DocumentSnapshot snapshot){
    return UserModel(
      email: snapshot['email'],
      username: snapshot['username'],
      uid: snapshot['uid'],
    );
  }


}