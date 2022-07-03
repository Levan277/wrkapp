import 'package:flutter/material.dart';
import 'package:wrkapp/screens/home_screen.dart';
import 'package:wrkapp/screens/signup_screen.dart';
import 'package:wrkapp/screens/login_screen.dart';
import 'package:wrkapp/screens/featured_screen.dart';
import 'package:wrkapp/screens/chatScreens/chat_home_screen.dart';

//Route Names

const String homePage = "home";
const String loginPage = "login";
const String signupPage = "signup";
const String chatScreen1 = "chat";

Route<dynamic> controller(RouteSettings settings){
  switch(settings.name){
    case homePage:
      return MaterialPageRoute(builder: (context) => FeaturedScreen());
    case loginPage:
      return MaterialPageRoute(builder: (context) => LoginScreen());
    case signupPage:
      return MaterialPageRoute(builder: (context) => SignupScreen());
    case chatScreen1:
      return MaterialPageRoute(builder: (context) => ChatHomeScreen());
    default:
      throw("This route name does not exist");
  }
}

