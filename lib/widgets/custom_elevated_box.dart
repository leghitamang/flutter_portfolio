import 'package:flutter/material.dart';

class CustomElevatedBox extends StatelessWidget {
  final Widget child;
  const CustomElevatedBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: child,
        ),
      ),
    );
  }
}
