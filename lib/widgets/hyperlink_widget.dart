import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';


class HyperLinkText extends StatelessWidget {
   HyperLinkText({Key? key,required this.text, required this.urlText}) : super(key: key);
 String urlText = "";
 String text = "";
  @override
  Widget build(BuildContext context) {
    return RichText(text: TextSpan(
      text: text,
      style: GoogleFonts.montserrat(
        decoration: TextDecoration.underline,color: Colors.blue,
        fontSize: 18,

       ),
      recognizer: TapGestureRecognizer()
        ..onTap = (){
        launch(urlText);
        }
     ),
    );
  }
}
