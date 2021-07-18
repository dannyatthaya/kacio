import 'package:flutter/material.dart';
import 'package:cataik/models/destination.dart';
import 'package:cataik/utils/destinations.dart';
import 'package:cataik/views/router.dart' as main_router;

class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout>
    with TickerProviderStateMixin<MainLayout> {
  late List<Key> _destinationKeys;
  late List<AnimationController> _faders;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();

    _faders = allDestinations.map<AnimationController>(
      (Destination destination) {
        return AnimationController(
          vsync: this,
          duration: const Duration(milliseconds: 200),
        );
      },
    ).toList();
    _faders[_currentIndex].value = 1.0;
    _destinationKeys = List<Key>.generate(
      allDestinations.length,
      (int index) => GlobalKey(),
    ).toList();
  }

  @override
  void dispose() {
    for (final AnimationController controller in _faders) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          fit: StackFit.expand,
          children: allDestinations.map((Destination destination) {
            final Widget view = FadeTransition(
              opacity: _faders[destination.index].drive(
                CurveTween(curve: Curves.fastOutSlowIn),
              ),
              child: KeyedSubtree(
                key: _destinationKeys[destination.index],
                child: main_router.Router(
                  destination: destination,
                ),
              ),
            );
            print(_faders);
            if (destination.index == _currentIndex) {
              _faders[destination.index].forward();
              return view;
            } else {
              _faders[destination.index].reverse();
              if (_faders[destination.index].isAnimating) {
                return IgnorePointer(child: view);
              }
              return Offstage(child: view);
            }
          }).toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: allDestinations.map((Destination destination) {
          return BottomNavigationBarItem(
            icon: Icon(destination.icon),
            backgroundColor: destination.color,
            label: destination.title,
          );
        }).toList(),
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue.shade800,
        unselectedItemColor: Colors.blue.shade200,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    if (_currentIndex != index) {
      setState(() {
        _currentIndex = index;
      });
    }
  }
}
