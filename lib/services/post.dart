import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quiver/iterables.dart';
import 'package:wrkapp/services/user.dart';

import '../models/post.dart';


class PostService{

  List<PostModel> _postListFromSnapshot(QuerySnapshot snapshot){
    return snapshot.docs.map((doc) {
      return PostModel(id: doc.id, creator: doc['creator'] ?? '', text: doc['text'] ?? '',ref: doc.reference, timestamp: doc['timestamp'] ?? 0, likesCount:0);
    }).toList();
  }


  Future savePost(text) async {
    await FirebaseFirestore.instance.collection("posts").add({
      'text':text,
      'creator': FirebaseAuth.instance.currentUser!.uid,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  Future reply(PostModel post, String text) async {
    if(text == ''){
      return;
    }

    await post.ref!.collection("replies").add({
      'text':text,
      'creator': FirebaseAuth.instance.currentUser!.uid,
      'timestamp': FieldValue.serverTimestamp(),
    });

  }


  Future likePost(PostModel post, bool current) async {

    if(current){
  post.likesCount = post.likesCount - 1;
      await FirebaseFirestore.instance.collection("posts").doc(post.id).collection('likes').doc(FirebaseAuth.instance.currentUser!.uid).delete();
    }


    if(!current){
    post.likesCount = post.likesCount + 1;
      await FirebaseFirestore.instance.collection("posts").doc(post.id).collection('likes').doc(FirebaseAuth.instance.currentUser!.uid).set({});

    }

  }
//
//   Future retweet(PostModel post, bool current) async{
//     if(current){
//       await FirebaseFirestore.instance.collection("posts").add({
//         'creator': FirebaseAuth.instance.currentUser!.uid,
//         'timestamp': FieldValue.serverTimestamp(),
//         'retweet': true,
//         'originalId': post.id
//
//       });
// //TODO remove the retweet
//       post.retweetsCount = post.retweetsCount - 1;
//       await FirebaseFirestore.instance.collection("posts").doc(post.id).collection('retweets').doc(FirebaseAuth.instance.currentUser!.uid).delete();
//
//       await FirebaseFirestore.instance.collection("posts").where("originalId", isEqualTo: post.id  ).where("creator",isEqualTo: FirebaseAuth.instance.currentUser!.uid).get().then((value){
//         if(value.docs.length == 0){
//           return;
//         }
//         FirebaseFirestore.instance.collection("posts").doc(value.docs[0].id).delete();
//       });
//       return;
//     }
//     post.retweetsCount = post.retweetsCount + 1;
//     await FirebaseFirestore.instance.collection("posts").doc(post.id).collection('retweets').doc(FirebaseAuth.instance.currentUser!.uid).set({});
//
//     await FirebaseFirestore.instance.collection("posts").add({
//       'creator': FirebaseAuth.instance.currentUser!.uid,
//       'timestamp': FieldValue.serverTimestamp(),
//       'retweet': true,
//       'originalId': post.id
//
//     });
//   }
  
Stream<bool> getCurrentUserLike(PostModel post){

     return FirebaseFirestore.instance.collection("posts").doc(post.id).collection('likes').doc(FirebaseAuth.instance.currentUser!.uid).snapshots().map((snapshot){
      return snapshot.exists;
     });

}


  Stream<List<PostModel>> getPostsByUser(uid) {
    return FirebaseFirestore.instance.collection('posts').where('creator', isEqualTo: uid).snapshots().map(_postListFromSnapshot);
  }

  Future<List<PostModel>> getReplies(PostModel post) async {
        QuerySnapshot querySnapshot = await post.ref!.collection("replies").orderBy('timestamp',descending: true).get();

        return _postListFromSnapshot(querySnapshot);

  }


  Future<List<PostModel>> getFeed() async{
     List<String> usersFollowing = await UserService().getUserFollowing(FirebaseAuth.instance.currentUser!.uid);

     var splitUsersFollowing = partition<dynamic>(usersFollowing,10);
     inspect(splitUsersFollowing);

     List<PostModel> feedList = [];

     for(int i=0; i<splitUsersFollowing.length; i++)
       {
         QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('posts').where('creator',whereIn: splitUsersFollowing.elementAt(i)).orderBy('timestamp',descending: true).get();
         feedList.addAll(_postListFromSnapshot(querySnapshot));
       }
feedList.sort((a,b){
  var adate = a.timestamp;
  var bdate = b.timestamp;
  return bdate!.compareTo(adate!);
});

     return feedList;
  }
}