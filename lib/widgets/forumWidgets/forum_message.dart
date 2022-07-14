import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForumMessage extends StatelessWidget {
  String post;
  String name;
   ForumMessage({Key? key, required this.post, required this.name} ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 250,
              child: Container(
                padding:const EdgeInsets.all(16.0),
                margin: const EdgeInsets.all(16.0),

                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.indigoAccent),
                  borderRadius: BorderRadius.circular(15),

                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: Text(post , style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black)),
                      ),
                    ),


                    Expanded(
                      child: Container(

                        child:Text("Posted By: " + name,style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white)),
                      ),
                    )

                  ],
                ),
// child: Text(post , style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 32, color: Colors.white)),
              ),
            ),
          ),



        ],

      );
  }
}

