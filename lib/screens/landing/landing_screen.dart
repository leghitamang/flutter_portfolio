import 'package:flutter/material.dart';
import 'package:portfolio_sabin/providers/navigation_provider.dart';
import 'package:portfolio_sabin/responsive/size_config.dart';
import 'package:portfolio_sabin/screens/landing/components/navigation_bar.dart';
import 'package:portfolio_sabin/screens/landing/components/sidebar.dart';
import 'package:portfolio_sabin/screens/mobile%20_section/components/mobile_appBar.dart';
import 'package:provider/provider.dart';

import 'components/menu_drawer.dart';

class LandingScreen extends StatefulWidget {
  static String routeName = '/';
  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  PageController? _pageController;

  @override
  void initState() {
    var navigationProvider =
        Provider.of<NavigationProvider>(context, listen: false);
    var navItemList = navigationProvider.navAndContentList;
    _tabController = TabController(length: navItemList.length, vsync: this);
    _pageController =
        PageController(initialPage: navigationProvider.selectedIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var navigationProvider =
        Provider.of<NavigationProvider>(context, listen: false);
    SizeConfig().init(context);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 950) {
          return Scaffold(
            body: Container(
              height: SizeConfig.screenHeight,
              width: SizeConfig.screenWidth,
              child: Row(
                children: <Widget>[
                  SideBar(),
                  Expanded(
                    child: Column(
                      children: [
                        NavigationBar(
                          navController: _tabController,
                          tabs: navigationProvider.navAndContentList
                              .map((e) => NavigationItem(
                                    title: e.navTitle,
                                  ))
                              .toList(),
                          onTap: (index) {
                            navigationProvider.changeIndex(index);
                            _pageController!.jumpToPage(index);
                          },
                        ),
                        Expanded(
                          child: PageView(
                            controller: _pageController,
                            physics: NeverScrollableScrollPhysics(),
                            onPageChanged: (index) {
                              navigationProvider.changeIndex(index);
                              _tabController!.animateTo(index);
                            },
                            allowImplicitScrolling: true,
                            children: navigationProvider.navAndContentList
                                .map((e) => e.content)
                                .toList(),
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
        return Scaffold(
          drawer: MenuDrawer(),
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                children: [
                  MobileAppBar(),
                  Consumer<NavigationProvider>(
                    builder: (context, navigationProvider, child) => Expanded(
                      child: navigationProvider.mobileContent,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _tabController!.dispose();
    _pageController!.dispose();
    super.dispose();
  }
}
