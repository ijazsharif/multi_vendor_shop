import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String id = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
