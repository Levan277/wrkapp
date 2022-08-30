import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wrkapp/utils/utils.dart';
class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  Future resetPassword() async {

showDialog(context: context,
    barrierDismissible: false,
    builder: (context)=>Center(child: CircularProgressIndicator(),
    ),
);


    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailController.text.trim());
      showSnackBar('Password Reset Email Sent', context);
      Navigator.of(context).popUntil((route) => route.isCurrent);
    }on FirebaseAuthException catch (e){
      print(e);
      showSnackBar(e.message!, context);
      Navigator.of(context).pop();
    }

  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Reset Password"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Recieve an email\nto reset your password",textAlign: TextAlign.center,style: GoogleFonts.montserrat(fontSize: 24),),
              SizedBox(height: 20,),
              TextFormField(
                controller: emailController,
                cursorColor: Colors.white,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(label: Text("email"),),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (email) =>
                    email !=null && !EmailValidator.validate(email) ? 'Enter a valid email' : null,
              ),
              SizedBox(height: 20,),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(50),
                ),
                icon: Icon(Icons.email_outlined),
                label: Text("Reset Password",style: GoogleFonts.montserrat(fontSize: 24),),
                onPressed: resetPassword,

              ),
            ],
          ),
        ),
      ),
    );




  }
}
