import 'dart:collection';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';
import 'package:wrkapp/models/user.dart';
import 'package:wrkapp/models/users.dart';
import 'package:wrkapp/utils/utils.dart';

class UserService{
 UtilsService _utilsService = UtilsService();



 UserModel1 _userFromFirebaseSnapshot(DocumentSnapshot snapshot){
  if (snapshot != null) {
    return UserModel1(email: snapshot['email'] ?? '', username: snapshot['username'] ?? '', uid: snapshot.id, profileImageUrl: snapshot['photoUrl'] ?? '',
     );
  } else {
    return UserModel1(email: 'null', username: 'null', uid: snapshot.id, profileImageUrl: 'null');
  }
 }

 List<UserModel1> _userListFromQuerySnapshot(QuerySnapshot snapshot){
  return snapshot.docs.map((doc){
   return UserModel1(email: doc['email'] ?? '', username: doc['username'] ?? '', uid: doc.id, profileImageUrl: doc['photoUrl'] ?? '',
   );
  }).toList();
 }


 Stream<UserModel1> getUserInfo(uid){

  return FirebaseFirestore.instance.collection('users').doc(uid).snapshots().map(_userFromFirebaseSnapshot);
 }

Future<List<String>> getUserFollowing(uid) async{
   QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('users').doc(uid).collection('following').get();

    final users = querySnapshot.docs.map((doc) => doc.id).toList();
   return users;
}

 Stream<List<UserModel1>> queryByName(search){
  return FirebaseFirestore.instance.collection('users').orderBy("username").startAt([search]).endAt([search + '\uf8ff']).limit(10).snapshots().map(_userListFromQuerySnapshot);
 }


 Stream<bool?> isFollowing(uid,otherId){
  return FirebaseFirestore.instance.collection('users').doc(uid).collection('following').doc(otherId).snapshots().map((snapshot){
   return snapshot.exists;
  });
 }

Future<void> followUser(uid) async{
   await FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser!.uid).collection('following').doc(uid).set({});
   await FirebaseFirestore.instance.collection('users').doc(uid).collection('followers').doc(FirebaseAuth.instance.currentUser!.uid).set({});
}

Future<void> unfollowUser(uid) async{
   await FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser!.uid).collection('following').doc(uid).delete();
   await FirebaseFirestore.instance.collection('users').doc(uid).collection('followers').doc(FirebaseAuth.instance.currentUser!.uid).delete();
}

 Future<void> updateProfile(File _bannerImage, File _profileImage, String username) async{
   String bannerImageUrl = "";
   String profileImageUrl = "";

   if(_bannerImage != null){
     //save imaage to storage
    bannerImageUrl = await _utilsService.uploadFile(_bannerImage, 'user/profile/${FirebaseAuth.instance.currentUser!.uid}/banner');
   }
   if(_profileImage != null){
     //save the image to storage
    profileImageUrl = await _utilsService.uploadFile(_profileImage, 'user/profile/${FirebaseAuth.instance.currentUser!.uid}/profile');
   }

   Map<String, Object> data = new HashMap();

   if(username != '')data['username'] = username;
   if(_bannerImage != '')data['bannerImageUrl'] = _bannerImage;
   if(_profileImage != '')data['photoUrl'] = _profileImage;

await FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser!.uid).update(data);
  }


}
