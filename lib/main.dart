import 'package:flutter/material.dart';
import 'package:portfolio_sabin/routes.dart';
import 'package:portfolio_sabin/screens/landing/landing_screen.dart';

import 'theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: theme(),
      initialRoute: LandingScreen.routeName,
      routes: routes(),
    );
  }
}
