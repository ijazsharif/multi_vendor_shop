import 'dart:async';

import 'package:flutter/material.dart';
import 'package:multi_vendor_shop/repository/app_config.dart';
import 'package:multi_vendor_shop/screens/main/main_screen.dart';
import 'package:multi_vendor_shop/screens/on_boarding/on_boarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String id = 'splash_screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    AppConfig.init().then((value) {
      Timer(Duration(seconds: 3), () {
        AppConfig.isOnBoardingWatched!
            ? Navigator.pushReplacementNamed(context, MainScreen.id)
            : Navigator.pushReplacementNamed(context, OnBoardingScreen.id);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: FittedBox(
            child: Text(
              'Splash Screen',
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    color: Colors.black,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
