import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:wrkapp/connectionsFirebase/AuthenticationService.dart';
import 'package:wrkapp/constants/color.dart';
import 'package:wrkapp/screens/finalScreens/final_home.dart';
import 'package:wrkapp/screens/home_screen.dart';
import 'package:wrkapp/screens/login_screen.dart';
import 'package:wrkapp/screens/splash_screen.dart';
import 'TutorialScreens/ForumTutorialScreen.dart';
import 'route/route.dart' as route;
import 'package:stream_feed_flutter_core/stream_feed_flutter_core.dart';
import 'package:rename_app/rename_app.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}



class MyApp extends StatefulWidget {
  const MyApp({Key? key, }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isNewUser = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserStatus();
  }

  Future<void> getUserStatus() async{
    final val = await authService.read('pin');
    if(val.isNotEmpty){
      setState(() {
        isNewUser = false;
      });
    }
    authService.isNewUserController.add(isNewUser);
  }
//UCCan@1=2
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


   // home: FutureBuilder<String>(
   //   future: authService.read('pin'),
   //   builder: (context,snapshot){
   //     if(snapshot.connectionState == ConnectionState.waiting){
   //       return Scaffold(body: Center(child: CircularProgressIndicator(),),);
   //     }
   //     if(snapshot.hasData && snapshot.data.isNotEmpty){
   //       return PasscodePage();
   //     }
   //     return RegisterPage();
   //   },
   // ),
// home: ForumTutorialScreen(),
   home:     StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.active){
    if(snapshot.hasData){

      return LoginScreen();
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