import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multi_vendor_shop/screens/main/main_screen.dart';
import 'package:multi_vendor_shop/screens/on_boarding/on_boarding.dart';
import 'package:multi_vendor_shop/screens/splash_screen.dart';

import 'theme/custom_primary_swatch.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Multi Vendor Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Swatch.kToDark,
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        OnBoardingScreen.id: (context) => OnBoardingScreen(),
        MainScreen.id : (context) => MainScreen(),
      },
    );
  }
}
