import 'package:flutter/material.dart';
import 'package:portfolio_sabin/screens/landing/landing_screen.dart';
import 'package:portfolio_sabin/screens/test_screen.dart';

Map<String, WidgetBuilder> routes() {
  return {
    LandingScreen.routeName: (context) => LandingScreen(),  
    TestScreen.routeName:(context) => TestScreen(),
  };
}
