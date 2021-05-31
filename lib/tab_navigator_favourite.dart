import 'package:flutter/material.dart';
import 'package:nested_navigation/AppRouter.dart';
import 'package:nested_navigation/tab_item.dart';

class TabNavigatorFavourite extends StatefulWidget {
  TabNavigatorFavourite({this.navigatorKey, this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;

  @override
  _TabNavigatorFavouriteState createState() => _TabNavigatorFavouriteState();
}

class _TabNavigatorFavouriteState extends State<TabNavigatorFavourite> {
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
