import 'package:amazon_clone_app/common/widget/customText.dart';
import 'package:amazon_clone_app/constants/global_variable.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.text, required this.onTap});
  String text;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shadowColor: Colors.amber,
              backgroundColor: GlobalVariables.secondaryColor,
              minimumSize: Size(double.infinity, 50)),
          onPressed: onTap,
          child: customText(text, Colors.black, FontWeight.bold, 16)),
    );
  }
}
