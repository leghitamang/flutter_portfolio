import 'package:flutter/material.dart';
import 'package:portfolio_sabin/providers/navigation_provider.dart';
import 'package:portfolio_sabin/routes.dart';
import 'package:portfolio_sabin/screens/landing/landing_screen.dart';
import 'package:provider/provider.dart';
import 'theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavigationProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sabin Pakhrin',
        theme: theme(),
        initialRoute: LandingScreen.routeName,
        routes: routes(),
      ),
    );
  }
}
