import 'package:flutter/material.dart';
import 'package:portfolio_sabin/screens/landing/components/navigation_bar.dart';
import 'package:portfolio_sabin/screens/landing/components/sidebar.dart';
import 'package:portfolio_sabin/screens/section/about/about_section.dart';
import 'package:portfolio_sabin/screens/section/contact/contact_section.dart';
import 'package:portfolio_sabin/screens/section/home/home_section.dart';
import 'package:portfolio_sabin/screens/section/portfolio/portfolio_section.dart';
import 'package:portfolio_sabin/screens/section/services/services_section.dart';

class LandingScreen extends StatefulWidget {
  static String routeName = '/';
  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  TabController? _tabController;
  PageController? _pageController;

  List<NavigationItem> navItems = [
    NavigationItem(title: 'Home'),
    NavigationItem(title: 'About'),
    NavigationItem(title: 'Portfolio'),
    NavigationItem(title: 'Services'),
    NavigationItem(title: 'Contact'),
  ];

  List<Widget> sections = [
    HomeSection(),
    AboutSection(),
    PortfolioSection(),
    ServicesSection(),
    ContactSection(),
  ];

  @override
  void initState() {
    _tabController = TabController(length: navItems.length, vsync: this);
    _pageController = PageController(initialPage: _selectedIndex);
    super.initState();
  }

  onTabPressed(index) {
    changeIndex(index);
    _pageController!.jumpToPage(_selectedIndex);
  }

  void onPageChanged(index) {
    changeIndex(index);
    _tabController!.animateTo(index);
  }

  changeIndex(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: <Widget>[
            SideBar(),
            Expanded(
              child: Column(
                children: [
                  NavigationBar(
                    navController: _tabController,
                    tabs: navItems,
                    onTap: onTabPressed,
                  ),
                  Expanded(
                    child: PageView(
                      controller: _pageController,
                      physics: NeverScrollableScrollPhysics(),
                      onPageChanged: onPageChanged,
                      children: sections,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
