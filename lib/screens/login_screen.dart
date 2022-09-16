import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wrkapp/connectionsFirebase/auth_methods.dart';
import 'package:wrkapp/connectionsFirebase/forgot_password.dart';
import 'package:wrkapp/route/route.dart' as route;
import 'package:wrkapp/screens/finalScreens/final_home.dart';
import 'package:wrkapp/screens/signup_screen.dart';
import 'package:wrkapp/utils/utils.dart';

import '../main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  bool _isLoading = false;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void loginUser() async{
    setState((){
      _isLoading = true;
    });

    String res = await Authentications().signIn(email: _emailController.text, password:_passwordController.text);
    setState((){
      _isLoading = false;
    });
    if(res=="success"){
      // Navigator.pushNamed(context, route.homePage);
     // Navigator.pushNamed(context, route.finalHome);
      Navigator.push(context, MaterialPageRoute(builder: (context)=>FinalHome(
      )));

    }
    else{
      showSnackBar(res, context);
    }
    setState((){
   _isLoading = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,),


          ), systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("Login",
                        style: GoogleFonts.montserrat(fontSize: 30, fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Login to your account",
                        style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color:Colors.grey[700]),)
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        inputFile(label: "Email", textEditingController: _emailController),
                        inputFile(label: "Password", obscureText: true, textEditingController: _passwordController),
                      ],
                    ),
                  ),
                  Padding(padding:
                  EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      padding: EdgeInsets.only(top: 3, left: 3),
                      decoration:
                      BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),

                          )



                      ),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: loginUser,
                        color: Colors.red,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),

                        ),
                        child: _isLoading ? const Center(child:
                        CircularProgressIndicator(color: Colors.white,),):
                        Text(
                          "Login", style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,

                        ),
                        ),

                      ),
                    ),
                  ),

                GestureDetector(
                  child:Text(
                    'Forgot Password?',
                    style: GoogleFonts.montserrat(
                      decoration: TextDecoration.underline,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotPasswordPage()));
                  },
                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  <Widget>[
                      Text("Don't have an account?"),
                      InkWell(
                        onTap: (){
                        // Navigator.pushNamed(context, route.signupPage);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                        },
                        child: Text(" Sign up", style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,

                        ),),
                      )
                    ],
                  ),

                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 100),
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/login_pic.jpg"),
                            fit: BoxFit.fitHeight
                        ),

                      ),
                    ),
                  )

                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

}


// we will be creating a widget for text field
Widget inputFile({label, obscureText = false, textEditingController})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      // Text(
      //   label,
      //   style: TextStyle(
      //       fontSize: 15,
      //       fontWeight: FontWeight.w400,
      //       color:Colors.black87
      //   ),
      //
      // ),
  RichText(
  text: TextSpan(
      text: label,
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
      children: [
        TextSpan(
            text: ' *',
            style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 16))
      ]),


  ),

      SizedBox(
        height: 5,
      ),

      TextField(
        controller: textEditingController,
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0,
                horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.grey.shade400,
              ),

            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400),
            ),
        ),

      ),
      SizedBox(height: 10,)
    ],
  );
  }

