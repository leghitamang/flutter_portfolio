import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_sabin/theme/colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const CustomButton({Key? key, required this.title, required this.onPressed,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.primary,
        ),
        child: Text(          
          title.toUpperCase(),
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              color: AppColors.white,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
