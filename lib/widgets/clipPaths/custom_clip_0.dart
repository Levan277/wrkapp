import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    double w = size.width;
    double h = size.height;



    Path path0 = Path();
path0.lineTo(0, h);
var firstStart = Offset(w/5, h);
var firstEnd = Offset(w/2.25, h-50);
path0.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

var secondStart = Offset(w-(w/3.24), h-105);
var secondEmd = Offset(w, h-10);

path0.quadraticBezierTo(secondStart.dx, secondStart.dy,secondEmd.dx, secondEmd.dy);
path0.lineTo(w, 0);



path0.close();


return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}