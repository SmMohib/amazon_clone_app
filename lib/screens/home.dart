import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../common/provider/userProvider.dart';

class HomeScreen extends StatefulWidget {
    static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final user =Provider.of<UserProvider>(context).user;
    return Scaffold(appBar: AppBar(title: Text(user.name),),);
  }
}