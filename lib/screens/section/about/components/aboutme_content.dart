import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_sabin/theme/colors.dart';
import 'package:portfolio_sabin/widgets/custom_button.dart';
import 'package:portfolio_sabin/widgets/custom_elevated_box.dart';

class AboutMeContent extends StatelessWidget {
  const AboutMeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: CustomElevatedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Me',
              style: GoogleFonts.poppins(
                fontSize: 30,
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            RichText(
              text: TextSpan(
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: AppColors.primary,
                  // fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: 'Pellentesque et eros in elit convallis iaculis.' +
                        'Pellentesque viverra leo sit amet luctus accumsan.' +
                        'Pellentesque et eros in elit convallis iaculis.' +
                        'Pellentesque viverra leo sit amet luctus accumsan.' +
                        'Pellentesque et eros in elit convallis iaculis.' +
                        'Pellentesque viverra leo sit amet luctus accumsan.' +
                        'Pellentesque et eros in elit convallis iaculis.' +
                        'Pellentesque viverra leo sit amet luctus accumsan.' +
                        'Pellentesque et eros in elit convallis iaculis.' +
                        'Pellentesque viverra leo sit amet luctus accumsan.' +
                        'Pellentesque et eros in elit convallis iaculis.' +
                        'Pellentesque viverra leo sit amet luctus accumsan.' +
                        'Pellentesque et eros in elit convallis iaculis.' +
                        'Pellentesque viverra leo sit amet luctus accumsan.' +
                        'Pellentesque et eros in elit convallis iaculis.' +
                        'Pellentesque viverra leo sit amet luctus accumsan.',
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerRight,
              child: CustomButton(
                title: 'Download CV',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
