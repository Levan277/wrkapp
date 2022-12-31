import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wrkapp/route/route.dart' as route;
import 'package:wrkapp/screens/support_screens/main_support_screen.dart';


class LiveSupportHome extends StatefulWidget {
  const LiveSupportHome({Key? key}) : super(key: key);

  @override
  State<LiveSupportHome> createState() => _LiveSupportHomeState();
}

class _LiveSupportHomeState extends State<LiveSupportHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange,),




      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:Text("Welcome To Live Chat Support ",style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),),
          ),
          SizedBox(height: 15,),
          IconButton(onPressed:(){
            // Navigator.pushNamed(context,route.liveChat);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LiveChat()));
          },icon: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(Icons.message, size: 34,),
          ),),
        ],
      ),


    );
  }
}
