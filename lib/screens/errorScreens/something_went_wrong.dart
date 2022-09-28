import 'package:flutter/material.dart';

class SomethingWrongScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/3_Something Went Wrong.png",
            fit: BoxFit.cover,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Flexible(child: Text("You Cannot Delete A Post That Is Not Yours!" ,style: TextStyle(color: Colors.purple,fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
          ),
        ],
      ),
    );
  }
}