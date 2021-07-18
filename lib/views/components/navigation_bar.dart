import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(FeatherIcons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(FeatherIcons.pieChart),
          label: "Chart",
        ),
        BottomNavigationBarItem(
          icon: Icon(FeatherIcons.refreshCcw),
          label: "History",
        ),
        BottomNavigationBarItem(
          icon: Icon(FeatherIcons.user),
          label: "Chart",
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue.shade800,
      unselectedItemColor: Colors.blue.shade200,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, "/");
        break;
      case 2:
        Navigator.pushNamed(context, "/history");
        break;
      default:
        break;
    }
    setState(() {
      _selectedIndex = index;
    });
  }
}
