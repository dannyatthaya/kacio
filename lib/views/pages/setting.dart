import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade600,
          foregroundColor: Colors.white,
          brightness: Brightness.dark,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Ionicons.ellipsis_vertical),
              color: Colors.white,
              splashRadius: 20.0,
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          color: Colors.green,
        ),
      ),
    );
  }
}
