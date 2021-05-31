import 'package:flutter/material.dart';
import 'package:nested_navigation/AppRouter.dart';
import 'package:nested_navigation/tab_item.dart';

class TabNavigatorExplore extends StatefulWidget {
  TabNavigatorExplore({this.navigatorKey, this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;

  @override
  _TabNavigatorExploreState createState() => _TabNavigatorExploreState();
}

class _TabNavigatorExploreState extends State<TabNavigatorExplore> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navigatorKey,
      initialRoute: AppRouter.EXPLORE_HOME,
      onGenerateRoute: (settings) {
        return AppRouter.generateRoute(settings);
      },
    );
  }
}
