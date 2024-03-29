import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SingleMessage extends StatelessWidget {
  final String message;
  final bool isMe;
  const SingleMessage({Key? key, required this.message, required this.isMe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(16.0),
          margin: EdgeInsets.all(16.0),
          constraints: BoxConstraints(maxWidth: 200),
          decoration: BoxDecoration(
            color: isMe ? Colors.black : Colors.orange,
            borderRadius: BorderRadius.all(Radius.circular(12)
            ),
          ),
          child: Text(message,
          style: GoogleFonts.montserrat(
            color: Colors.white
          ),),
        ),
      ],
    );
  }
}
