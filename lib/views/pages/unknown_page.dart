import 'package:flutter/material.dart';

class UnknownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Page Not Found!'),
        ),
        body: const Center(
          child: Text('You seem to have been lost!'),
        ),
      ),
    );
  }
}
