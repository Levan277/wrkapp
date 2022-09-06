import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'route/route.dart' as route;
import 'package:stream_feed_flutter_core/stream_feed_flutter_core.dart';






void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}





class MyApp extends StatelessWidget {
  const MyApp({Key? key, }) : super(key: key);



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
   // home:ContempRacism(),
      onGenerateRoute: route.controller,
      initialRoute: route.loginPage,
      //

    );
  }
}




