import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:wrkapp/screens/HomePageR.dart';
import 'package:wrkapp/screens/chatScreens/chat_home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wrkapp/screens/featured_screen.dart';
import 'package:wrkapp/screens/home_screen.dart';
import 'package:wrkapp/screens/signup_screen.dart';
import 'package:wrkapp/models/user.dart';
import 'route/route.dart' as route;



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Future<Widget> userSignedIn() async{
  //   User? user = FirebaseAuth.instance.currentUser;
  //   if(user!=null){
  //     DocumentSnapshot userData = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
  //     UserModel userModel = UserModel.fromJson(userData);
  //     return FeaturedScreen();
  //   }else{
  //     return SignupScreen();
  //   }
  //
  //
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeR(),
      // onGenerateRoute: route.controller,
      // initialRoute: route.splashScreen,
    );
  }
}

