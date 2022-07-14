import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wrkapp/route/route.dart' as route;


class LiveSupportHome extends StatefulWidget {
  const LiveSupportHome({Key? key}) : super(key: key);

  @override
  State<LiveSupportHome> createState() => _LiveSupportHomeState();
}

class _LiveSupportHomeState extends State<LiveSupportHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(onPressed:(){
            Navigator.pushNamed(context,route.liveChat);
          },icon: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(Icons.message, size: 34,),
          ),),
        ],
      ),



      body: Center(
        child:Text("Welcome To Live Chat Support ",style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),),
      ),
    );
  }
}
