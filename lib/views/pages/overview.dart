import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  _OverviewScreenState createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
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
          color: Colors.blue,
        ),
      ),
    );
  }
}
