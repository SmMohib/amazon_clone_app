import 'package:amazon_clone_app/constants/global_text.dart';
import 'package:amazon_clone_app/constants/global_variable.dart';
import 'package:flutter/material.dart';

class Auth_Screen extends StatefulWidget {
 static String routeName ="/authscreen";
   Auth_Screen({super.key});

  @override
  State<Auth_Screen> createState() => _Auth_ScreenState();
}

class _Auth_ScreenState extends State<Auth_Screen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(appBar: AppBar(title: Text('Login Screen'),
    
    
    ),
    body: Column(
      children: [Text('Welcome',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),
      ),
      ListTile(title: text_demo('text', GlobalVariables.blackColor, FontWeight.w100, 16),),
        Center(child: ElevatedButton.icon(onPressed: (){}, 
        label: const Text('Google Sign In')),),
      ],
    ),
    );
  }
}