import 'package:flutter/material.dart';

class TabControllerProvider extends InheritedWidget {
  final TabController? tabController;
  final Widget child;

  TabControllerProvider({ this.tabController,  required this.child}) : super(child: child);
      

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static TabControllerProvider? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<TabControllerProvider>();
}
