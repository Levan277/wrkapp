

import 'package:flutter/material.dart';
import 'package:stream_feed_flutter_core/stream_feed_flutter_core.dart';
import 'package:wrkapp/screens/finalScreens/final_home.dart';
import 'package:wrkapp/screens/home_screen.dart';

import 'package:wrkapp/screens/login_screen.dart';
import 'package:wrkapp/screens/featured_screen.dart';
import 'package:wrkapp/screens/chatScreens/main_chat_home_screen.dart';
import 'package:wrkapp/screens/chatScreens/search_contact_screen.dart';
import 'package:wrkapp/models/user.dart';
import 'package:wrkapp/screens/splash_screen.dart';
import 'package:wrkapp/screens/support_screens/main_support_screen.dart';
import 'package:wrkapp/screens/support_screens/support_home_screen.dart';
import 'package:wrkapp/screens/tweetScreens/profile_tweet_screen.dart';
import 'package:wrkapp/screens/unitScreens/unit1/unit1.dart';
import 'package:wrkapp/services/edit.dart';
import 'package:wrkapp/services/replies.dart';

import '../models/users.dart';
//Route Names



const String homePage = "home";
const String loginPage = "login";
const String signupPage = "signup";
const String chatScreen1 = "chat";
const String searchContactPage = "searchContact";
const String splashScreen = 'splash';
const String liveSupportScreen = "support";
const String liveChat = "liveChat";
const String profile = 'profile';
const String editProfile = 'edit';
const String replies = 'replies';
const String unit1 = 'unit1';
const String finalHome = 'finalHome';
String n = '';



Route<dynamic> controller(RouteSettings settings){
  switch(settings.name){
    case splashScreen:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case homePage:
      return MaterialPageRoute(builder: (context) => FeaturedScreen());
    case loginPage:
      return MaterialPageRoute(builder: (context) => const LoginScreen());

    case chatScreen1:
      return MaterialPageRoute(builder: (context) => const MainChatHome());
    case searchContactPage:
      return MaterialPageRoute(builder: (context) => const SearchContacts());
    case liveSupportScreen:
      return MaterialPageRoute(builder: (context)=>const LiveSupportHome());
    case liveChat:
      return MaterialPageRoute(builder: (context)=>const LiveChat());
    case profile:
      return MaterialPageRoute(builder: (context)=> Profile(uid: n,));
    case editProfile:
      return MaterialPageRoute(builder: (context)=>const Edit());
    case unit1:
      return MaterialPageRoute(builder: (context)=>const Unit1());
    case finalHome:
      return MaterialPageRoute(builder: (context)=>const FinalHome());
    default:
      throw("This route name does not exist");
  }
}

