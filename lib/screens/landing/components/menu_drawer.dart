import 'package:flutter/material.dart';
import 'package:portfolio_sabin/providers/navigation_provider.dart';
import 'package:portfolio_sabin/providers/tab_controller_provider.dart';
import 'package:provider/provider.dart';

class MenuDrawer extends StatelessWidget {
  MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationProvider>(
      builder: (context, navigationProvider, child) {
        var navList = navigationProvider.navAndContentList;
        return Drawer(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return MobileNavigationItem(
                  title: navList[index].navTitle, index: index);
            },
            itemCount: navList.length,
          ),
        );
      },
    );
  }
}

class MobileNavigationItem extends StatelessWidget {
  final String title;
  final int index;
  const MobileNavigationItem(
      {Key? key, required this.title, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var navigationProvider =
        Provider.of<NavigationProvider>(context, listen: false);
    return InkWell(
      child: ListTile(title: Text(title)),
      onTap: () {
        navigationProvider.changeIndex(index);
        final controller = TabControllerProvider.of(context)!.tabController;
        controller!.animateTo(index);
        Navigator.pop(context);
      },
    );
  }
}
