// ignore_for_file: prefer_const_constructors

import 'package:amazon_clone_app/constants/global_variable.dart';
import 'package:amazon_clone_app/features/auth/screens/auth_screen.dart';
import 'package:amazon_clone_app/router.dart';
import 'package:amazon_clone_app/screens/searchScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amazon Clone',
       theme: ThemeData(
        cardColor: GlobalVariables.secondaryColor,
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
          
          primary: GlobalVariables.secondaryColor,
          secondary: Color.fromARGB(255, 0, 0, 0),
          onSurface: Color.fromARGB(255, 0, 0, 0),
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor:GlobalVariables.secondaryColor ,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        useMaterial3: true, // can remove this line
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: Scaffold(appBar: AppBar(title: Text('Home'),
      ),
      body:Column(
        children: [Text('data'),
          Builder(
            builder: (context) {
              return ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, Auth_Screen.routeName
                );},child: Text('data'),);
            }
          )
        ],
      ) ,
      ),
      
    );
  }
}

