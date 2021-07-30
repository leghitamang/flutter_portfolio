import 'package:flutter/material.dart';
import 'package:portfolio_sabin/screens/landing/landing_screen.dart';

Map<String, WidgetBuilder> routes() {
  return {
    LandingScreen.routeName: (context) => LandingScreen(),  
  };
}
