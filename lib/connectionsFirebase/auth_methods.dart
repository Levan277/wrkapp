import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wrkapp/connectionsFirebase/storage_methods.dart';
import 'package:wrkapp/main.dart';
import 'package:wrkapp/models/user.dart';
class Authentications {

  String email = "";
  String password = "";
  String username = "";

  //creating instance of firebase auth
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;


  Future<String> signUp(
      {required String email, required String password, required String username, required Uint8List file}) async {
    String res = "some error occured";
;
    try{
      if(email.isNotEmpty || password.isNotEmpty||username.isNotEmpty || file!=null ){
        UserCredential cred = (await _auth.createUserWithEmailAndPassword(
            email: email, password: password));

        String photoUrl = await StorageMethods().uploadImageToStorage('profilePics', file, false);
        //add users to the database
       await  _firestore.collection('users').doc(cred.user!.uid
       ).set({
          'email': email,
          'password': password,
          'username': username,
          'uid': cred.user!.uid,
         'photoUrl': photoUrl,
         'bannerImageUrl': ''
        });

       res = "success";
      }

    } on FirebaseAuthException catch(err){
      if(err.code == "invalid-email"){
        res = "the email is invalid or fomratted incorrectly";
      } else if(err.code == "weak-password"){
        res = "Password must be at least 6 characters";
      }
    }

    catch(err){
      res = err.toString();
    }

    return res;
  }

  Future<String> signIn(
      {required String email, required String password}) async {
    String res = "some error occured";
    try{
      if(email.isNotEmpty || password.isNotEmpty){
        UserCredential cred = await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res= "success";
      }else{
        res = "please enter all the fields";
      }

    }catch(err){
 res = err.toString();
    }
    return res;
  }





}




