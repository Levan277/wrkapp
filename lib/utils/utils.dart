import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:cloud_firestore/cloud_firestore.dart';
//creating a snack bar
showSnackBar(String content, BuildContext context){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(content),
     )
  );
}

//creating pickImage function

pickImage(ImageSource source) async{
  final ImagePicker _imagePicker = ImagePicker();

  XFile? _file = await _imagePicker.pickImage(source: source);

  if(_file!=null){
    return await _file.readAsBytes();
  }else{
    print("No Image Selected");
  }
}

class UtilsService{


  Future<String> uploadFile(File _image, String path) async{
    firebase_storage.Reference storageReference = firebase_storage.FirebaseStorage.instance.ref(path);

    firebase_storage.UploadTask uploadTask = storageReference.putFile(_image);
    await uploadTask.whenComplete(() => null);
    String returnURL = '';
    await storageReference.getDownloadURL().then((fileURL){
      returnURL = fileURL;
    });
    return returnURL;


  }
}

