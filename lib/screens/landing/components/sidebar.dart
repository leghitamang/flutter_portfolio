import 'package:flutter/material.dart';
import 'package:portfolio_sabin/screens/landing/components/logo.dart';
import 'package:portfolio_sabin/social_icon_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Logo(),
            _socialIcons(),
          ],
        ),
      ),
    );
  }

  Widget _socialIcons() {
    return Column(
      children: [
        SocialIcons(
          icon: SocialIcon.twitter,
          url: 'https://twitter.com/leghitmg',
        ),
        SocialIcons(
          icon: SocialIcon.github,
          url: 'https://github.com/leghitamang',
        ),
        SocialIcons(
          icon: SocialIcon.facebook_squared,
          url: 'https://www.facebook.com/leghitmg',
        ),
        SocialIcons(
          icon: SocialIcon.instagram,
          url: 'https://www.instagram.com/leghi_tmg/',
        ),
        SocialIcons(
          icon: SocialIcon.linkedin_squared,
          url: 'https://www.linkedin.com/in/leghitmg/',
        ),
      ],
    );
  }
}

class SocialIcons extends StatelessWidget {
  final IconData icon;
  final String url;
  const SocialIcons({
    Key? key,
    required this.icon,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          _launchUrl(url);
        },
        child: Icon(icon, size: 18),
      ),
    );
  }

  void _launchUrl(String _url) async {
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  }
}
