import 'package:firebase_auth/firebase_auth.dart';

class UserModel1{
  final String email;
  final String username;
  final String uid;
  final String profileImageUrl;

  UserModel1(
  {
    required this.email,
    required this.username,
    required this.uid,
    required this.profileImageUrl,
}
      );


}