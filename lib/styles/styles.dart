import 'package:flutter/material.dart';

abstract class AppStyle{
  static TextStyle pageLabel = const TextStyle(
    fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black);

  static TextStyle m12bt = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.black.withOpacity(0.65));

  static TextStyle m12b = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.black);

  static TextStyle m12w = const TextStyle(
    fontWeight: FontWeight.w500, color: Colors.white,fontSize: 12);

  static TextStyle r12w = const TextStyle(
    fontWeight: FontWeight.w400, color: Colors.white,fontSize: 12);

  static TextStyle r10wt = TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: Colors.white.withOpacity(0.75));

  static TextStyle b32w = const TextStyle(
    fontWeight: FontWeight.w600, color: Colors.white,fontSize: 32);


}