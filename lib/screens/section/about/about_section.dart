import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:portfolio_sabin/screens/section/about/components/aboutme_content.dart';
import 'package:portfolio_sabin/screens/section/about/components/skills_card.dart';
import 'package:portfolio_sabin/theme/colors.dart';
import 'package:portfolio_sabin/widgets/custom_button.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SkillsCard(),
          SizedBox(width: 10),
          AboutMeContent(),
        ],
      ),
    );
  }
}
