import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_sabin/theme/colors.dart';

class Logo extends StatefulWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation? _sizeAnimation;

  @override
  void initState() {
    _controller =
        AnimationController(duration: Duration(milliseconds: 700), vsync: this);
    _sizeAnimation = Tween<double>(begin: 0, end: 30).animate(_controller!);
    _controller!.forward();
    _controller!.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'Sp.',
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: AppColors.primary,
          fontSize: _sizeAnimation!.value,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
