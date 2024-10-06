import 'package:flutter/material.dart';

customText(String text, Color color,FontWeight fontWeight, double size,){
  return Text(text,
  style: TextStyle(fontSize: size,fontWeight: fontWeight,color: color,));
}