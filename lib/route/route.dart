import 'package:flutter/material.dart';
import 'package:wrkapp/screens/home_screen.dart';
import 'package:wrkapp/screens/signup_screen.dart';
import 'package:wrkapp/screens/login_screen.dart';
import 'package:wrkapp/screens/featured_screen.dart';
import 'package:wrkapp/screens/chatScreens/main_chat_home_screen.dart';
import 'package:wrkapp/screens/chatScreens/search_contact_screen.dart';
import 'package:wrkapp/models/user.dart';
import 'package:wrkapp/screens/splash_screen.dart';
import 'package:wrkapp/screens/support_screens/main_support_screen.dart';
import 'package:wrkapp/screens/support_screens/support_home_screen.dart';
//Route Names



const String homePage = "home";
const String loginPage = "login";
const String signupPage = "signup";
const String chatScreen1 = "chat";
const String searchContactPage = "searchContact";
const String splashScreen = 'splash';
const String liveSupportScreen = "support";
const String liveChat = "liveChat";






Route<dynamic> controller(RouteSettings settings){
  switch(settings.name){
    case splashScreen:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case homePage:
      return MaterialPageRoute(builder: (context) => FeaturedScreen());
    case loginPage:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    case signupPage:
      return MaterialPageRoute(builder: (context) => const SignupScreen());
    case chatScreen1:
      return MaterialPageRoute(builder: (context) => const MainChatHome());
    case searchContactPage:
      return MaterialPageRoute(builder: (context) => const SearchContacts());
    case liveSupportScreen:
      return MaterialPageRoute(builder: (context)=>const LiveSupportHome());
    case liveChat:
      return MaterialPageRoute(builder: (context)=>const LiveChat());
    default:
      throw("This route name does not exist");
  }
}

