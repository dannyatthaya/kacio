import 'package:cataik/models/destination.dart';
import 'package:cataik/views/pages/history.dart';
import 'package:cataik/views/pages/home.dart';
import 'package:cataik/views/pages/unknown_page.dart';
import 'package:flutter/material.dart';

class Router extends StatefulWidget {
  const Router({Key? key, required this.destination}) : super(key: key);

  final Destination destination;

  @override
  _RouterState createState() => _RouterState();
}

class _RouterState extends State<Router> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case '/':
                return const HomeScreen();
              case '/history':
                return const HistoryScreen();
              default:
                return UnknownPage();
            }
          },
        );
      },
    );
  }
}
