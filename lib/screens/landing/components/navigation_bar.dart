import 'package:flutter/material.dart';
import 'package:portfolio_sabin/theme/colors.dart';

class NavigationBar extends StatelessWidget {
  final TabController? navController;
  final List<Widget> tabs;
  final Function(int) onTap;
  const NavigationBar(
      {Key? key, this.navController, required this.tabs, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 30, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 4,
            child: TabBar(
              controller: navController,
              tabs: tabs,
              onTap: onTap,
              indicatorColor: Theme.of(context).primaryColor,
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Schedule a call',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.red,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NavigationItem extends StatelessWidget {
  final String title;
  const NavigationItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodyText1!
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
