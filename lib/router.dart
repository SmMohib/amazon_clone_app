import 'package:amazon_clone_app/features/auth/screens/auth_screen.dart';
import 'package:amazon_clone_app/screens/searchScreen.dart';
import 'package:flutter/material.dart';
Route<String> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case '/authscreen':  // Use lowercase or appropriate naming convention
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => Auth_Screen(),  // Ensure AuthScreen is the correct widget
      );
case '/search':  // Use lowercase or appropriate naming convention
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => SearchScreen(),  // Ensure AuthScreen is the correct widget
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}
