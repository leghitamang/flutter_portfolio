import 'package:flutter/material.dart';
import 'package:portfolio_sabin/screens/mobile%20_section/about/about_section.dart';
import 'package:portfolio_sabin/screens/mobile%20_section/contact/contact_section.dart';
import 'package:portfolio_sabin/screens/mobile%20_section/home/home_section.dart';
import 'package:portfolio_sabin/screens/mobile%20_section/portfolio/portfolio_section.dart';
import 'package:portfolio_sabin/screens/mobile%20_section/services/services_section.dart';
import 'package:portfolio_sabin/screens/section/about/about_section.dart';
import 'package:portfolio_sabin/screens/section/contact/contact_section.dart';
import 'package:portfolio_sabin/screens/section/home/home_section.dart';
import 'package:portfolio_sabin/screens/section/portfolio/portfolio_section.dart';
import 'package:portfolio_sabin/screens/section/services/services_section.dart';

class NavigationProvider with ChangeNotifier {
  int _currentIndex = 0;

  List<NavigationContentModel> navAndContentList = [
    NavigationContentModel(
      navTitle: 'Home',
      mobileContent: MobileHomeSection(),
      content: HomeSection(),
    ),
    NavigationContentModel(
      navTitle: 'About',
      mobileContent: MobileAboutSection(),
      content: AboutSection(),
    ),
    NavigationContentModel(
      navTitle: 'Portfolio',
      mobileContent: MobilePortfolioSection(),
      content: PortfolioSection(),
    ),
    NavigationContentModel(
      navTitle: 'Services',
      mobileContent: MobileServicesSection(),
      content: ServicesSection(),
    ),
    NavigationContentModel(
      navTitle: 'Contact',
      mobileContent: MobileContactSection(),
      content: ContactSection(),
    ),
  ];

  int get selectedIndex => _currentIndex;

  Widget get content => navAndContentList[_currentIndex].content;

  Widget get mobileContent => navAndContentList[_currentIndex].mobileContent;

  String get title => navAndContentList[_currentIndex].navTitle;
  

  changeIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}

class NavigationContentModel {
  final String navTitle;
  final Widget content;
  final Widget mobileContent;

  NavigationContentModel(
      {required this.navTitle,
      required this.content,
      required this.mobileContent});
}
