import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nested_navigation/container_third_view.dart';
import 'package:nested_navigation/container_view.dart';
import 'package:page_transition/page_transition.dart';

import 'container_second_view.dart';

class AppRouter {
  static const EXPLORE_HOME = "/explore";
  static const FAVOURITE_HOME = "/favourite";
  static const EXPLORE_CONTAINER_TWO = "/explore_container_two";
  static const EXPLORE_CONTAINER_THIRD = "/explore_container_third";

  static RouteSettings settings;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    print(settings.name);

    switch (settings.name) {
      case AppRouter.FAVOURITE_HOME:
        return PageTransition(
            child: ContainerView(), type: PageTransitionType.scale);

        return PageTransition(
            child: ContainerSecondView(), type: PageTransitionType.fade);
      case AppRouter.EXPLORE_CONTAINER_TWO:
        return PageTransition(
            child: ContainerSecondView(), type: PageTransitionType.fade);
      case AppRouter.EXPLORE_CONTAINER_THIRD:
        return PageTransition(
            child: ContainerThirdView(), type: PageTransitionType.fade);
      case AppRouter.EXPLORE_HOME:
        return PageTransition(
            child: ContainerView(), type: PageTransitionType.rightToLeft);
    }

    return null;
  }
}
