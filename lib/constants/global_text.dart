import 'package:flutter/material.dart';

text_demo(String text, Color color,FontWeight fontWeight, dynamic size,){
  return Text(text,
  style: TextStyle(fontSize: size,fontWeight: fontWeight,color: color,));
}