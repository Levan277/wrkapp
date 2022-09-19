import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:wrkapp/constants/color.dart';
import 'package:wrkapp/screens/finalScreens/final_home.dart';
import 'package:wrkapp/screens/login_screen.dart';
import 'package:wrkapp/screens/splash_screen.dart';
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

//UCCan@1=2
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

   home:     StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.active){
    if(snapshot.hasData){

      return FinalHome();
    }
    else if(snapshot.hasError){
    return Center(child: Text('${snapshot.error}'),);
       }
    }
            if(snapshot.connectionState == ConnectionState.waiting){
              return Center(child: CircularProgressIndicator(color: kPrimaryColor,));
            }

            return const SplashScreen();
          }

      ),



      // route.loginPage,
      //

    );
  }
}
//



