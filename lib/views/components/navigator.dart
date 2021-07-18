import 'package:cataik/views/pages/history.dart';
import 'package:cataik/views/pages/home.dart';
import 'package:cataik/views/pages/statistic.dart';
import 'package:cataik/views/pages/setting.dart';
import 'package:cataik/views/pages/unknown_page.dart';
import 'package:flutter/material.dart';

class TabNavigator extends StatelessWidget {
  const TabNavigator({required this.navigatorKey, required this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (tabItem == "Home") {
      child = const HomeScreen();
    } else if (tabItem == "Statistic") {
      child = const OverviewScreen();
    } else if (tabItem == "History") {
      child = const HistoryScreen();
    } else if (tabItem == "Setting") {
      child = const SettingScreen();
    } else {
      child = UnknownPage();
    }

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) => child);
      },
    );
  }
}
