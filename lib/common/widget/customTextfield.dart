// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
   CustomTextfield({super.key,required this.controller,required this.hintText});
TextEditingController controller;
String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        controller:controller ,
        decoration:  InputDecoration(
          // ignore: prefer_const_constructors
          hintText: hintText,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black
            )
          ),
          enabledBorder:OutlineInputBorder(
             borderSide: BorderSide(
              color: Colors.black
            )
          )
        ),
        validator: (value) {
          if(value == null || value.isEmpty){
            return "Enter $hintText";
          }
          return null;
        },
        
      ),
    );
  }
}