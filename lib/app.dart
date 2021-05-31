import 'package:flutter/material.dart';
import 'package:nested_navigation/tab_item.dart';
import 'package:nested_navigation/tab_navigator_explore.dart';

import 'bottom_navigation.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  var _currentTab = TabItem.home;
  final _navigatorKeys = {
    TabItem.home: GlobalKey<NavigatorState>(),
    TabItem.favourite: GlobalKey<NavigatorState>(),
  };

  void _selectTab(TabItem tabItem) {
    if (tabItem == _currentTab) {
      // pop to first route
      _navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        _buildOffstageNavigator(TabItem.home),
        //_buildOffstageNavigator(TabItem.favourite),
      ]),
      bottomNavigationBar: BottomNavigation(
        currentTab: _currentTab,
        onSelectTab: _selectTab,
      ),
    );
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    return Offstage(
      offstage: _currentTab != tabItem,
      child: getTabNavigator(
          navigatorKeys: _navigatorKeys[tabItem], tabItem: tabItem),
    );
  }

  Widget getTabNavigator(
      {GlobalKey<NavigatorState> navigatorKeys, TabItem tabItem}) {
    if (tabItem == TabItem.home) {
      return TabNavigatorExplore(
        navigatorKey: _navigatorKeys[tabItem],
        tabItem: tabItem,
      );
    }
    return null;
  }
}
