import 'package:flutter/material.dart';
import 'package:cataik/views/components/navigation_bar.dart';
import 'package:ionicons/ionicons.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        color: Colors.red,
      ),
    );
  }
}
