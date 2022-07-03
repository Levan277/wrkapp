import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:wrkapp/screens/chatScreens/chat_home_screen.dart';
import 'route/route.dart' as route;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: route.controller,
      initialRoute: route.loginPage,
    );
  }
}

