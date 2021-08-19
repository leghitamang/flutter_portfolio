import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:portfolio_sabin/theme/colors.dart';
import 'package:portfolio_sabin/widgets/custom_elevated_box.dart';

class SkillsCard extends StatelessWidget {
  const SkillsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: CustomElevatedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Center(
              child: CircleAvatar(
                radius: 80,
                // backgroundImage: NetworkImage(
                //     'https://i.pinimg.com/564x/e4/75/e3/e475e3415a02e277d86e5c11776b1a99.jpg'),
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Skills',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            _buildSkillsBar('Flutter', 0.8, Colors.blue),
            _buildSkillsBar('Laravel', 0.7, Colors.pink),
            _buildSkillsBar('NodeJs', 0.6, Colors.green),
            _buildSkillsBar('ReactJS', 0.7, Colors.blueGrey),
          ],
        ),
      ),
    );
  }

  _buildSkillsBar(String skill, double percent, Color color) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                skill,
                style: GoogleFonts.poppins(
                  // fontSize: 30,
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${percent * 100}%',
                style: GoogleFonts.poppins(
                  // fontSize: 30,
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          LinearPercentIndicator(
            lineHeight: 8.0,
            percent: percent,
            progressColor: color,
          ),
        ],
      ),
    );
  }
}
