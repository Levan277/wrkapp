import 'package:cloud_firestore/cloud_firestore.dart';

class PostModel{
  final String id;
  final String creator;
  final String text;
  final Timestamp? timestamp;
   int likesCount;
   DocumentReference? ref;



  PostModel(
      {
        required this.id, required this.creator, required this.text, this.ref, this.timestamp, required this.likesCount,
      });

}