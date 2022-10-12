import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wrkapp/connectionsFirebase/AuthenticationService.dart';
import 'package:wrkapp/screens/finalScreens/final_home.dart';
import 'package:wrkapp/screens/login_screen.dart';

class PasscodeScreen extends StatefulWidget {
  const PasscodeScreen({Key? key}) : super(key: key);

  @override
  _PasscodeScreenState createState() => _PasscodeScreenState();
}

class _PasscodeScreenState extends State<PasscodeScreen> {

  late Stream<bool> _isVerification;
  int attempts = 0;
  @override
  void initState() {
    authService.isEnabledStream;
    this._isVerification = authService.isEnabledStream;
    super.initState();
  }

  void _onCallback(String enteredCode){
    authService.verifyCode(enteredCode);
    this._isVerification.listen((isValid){
      if(isValid){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FinalHome()));
      }
    });
  }

  void _onCancel(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
  }

  Future<void> authenticate() async{
    final isAuthenticated = await localAuth.authenticate(localizedReason: 'Do Something',
    );
    authService.isEnabledController.add(isAuthenticated);
    if(isAuthenticated){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FinalHome()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: localAuth.canCheckBiometrics,
      builder: (context, snapshot){
        if(snapshot.hasData){
          this.authenticate();
          return Container(
            child: Text('Please Authenticate with Face ID',style: TextStyle(fontSize: 25,color: Colors.white),
            ),
            margin: EdgeInsets.symmetric(vertical: 100,horizontal: 75.0),
          );

        }
else {
 return Container();
        }
        // return PascodeWidget(
        //   this._isVerification,
        //   this._onCallback,
        //   this._onCancel,
        // );



      },
    );
  }
}
