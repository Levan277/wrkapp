import 'package:flutter/material.dart';
import 'package:wrkapp/screens/home_screen.dart';
import 'package:wrkapp/screens/signup_screen.dart';
import 'package:wrkapp/screens/login_screen.dart';
import 'package:wrkapp/screens/featured_screen.dart';
import 'package:wrkapp/screens/chatScreens/main_chat_home_screen.dart';
import 'package:wrkapp/screens/chatScreens/search_contact_screen.dart';
import 'package:wrkapp/models/user.dart';
//Route Names

const String homePage = "home";
const String loginPage = "login";
const String signupPage = "signup";
const String chatScreen1 = "chat";
const String searchContactPage = "searchContact";
Route<dynamic> controller(RouteSettings settings){
  switch(settings.name){
    case homePage:
      return MaterialPageRoute(builder: (context) => FeaturedScreen());
    case loginPage:
      return MaterialPageRoute(builder: (context) => LoginScreen());
    case signupPage:
      return MaterialPageRoute(builder: (context) => SignupScreen());
    case chatScreen1:
      return MaterialPageRoute(builder: (context) => MainChatHome());
    case searchContactPage:
      return MaterialPageRoute(builder: (context) => SearchContacts());
    default:
      throw("This route name does not exist");
  }
}

