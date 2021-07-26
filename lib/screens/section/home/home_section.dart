import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_sabin/theme/colors.dart';
import 'package:portfolio_sabin/utils/app_assets.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hi There,',
                          style: GoogleFonts.poppins(
                            fontSize: 30,
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          )),
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.poppins(
                            fontSize: 80,
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: 'I am Sab',
                            ),
                            TextSpan(
                                text: 'i',
                                style: TextStyle(color: AppColors.red)),
                            TextSpan(text: 'n'),
                          ],
                        ),
                      ),
                      Text(
                        'I am a Flutter Developer.',
                        style: GoogleFonts.poppins(
                          fontSize: 50,
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('And also a designer.',
                          style: GoogleFonts.poppins(
                            fontSize: 40,
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(40, 20, 30, 50),
                child: Row(
                  children: [
                    _buildFooterTile(context,
                        title: 'Email', content: 'leghitamang@gmail.com'),
                    SizedBox(width: 20),
                    VerticalDivider(),
                    SizedBox(width: 20),
                    _buildFooterTile(context,
                        title: 'Phone', content: '+9779849534394'),
                    SizedBox(width: 20),
                    VerticalDivider(),
                    SizedBox(width: 20),
                    _buildFooterTile(context,
                        title: 'Location', content: 'Boudha,Kathmandu'),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(
                  AppAssets.model,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFooterTile(BuildContext context,
      {required String title, required String content}) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            content,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
