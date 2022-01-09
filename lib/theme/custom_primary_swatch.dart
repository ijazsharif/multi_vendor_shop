import 'package:flutter/material.dart';

class Swatch {
  static const MaterialColor kToDark = const MaterialColor(
    0xff461111, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xff3f0f0f), //10%
      100: const Color(0xff380e0e), //20%
      200: const Color(0xff310c0c), //30%
      300: const Color(0xff2a0a0a), //40%
      400: const Color(0xff230909), //50%
      500: const Color(0xff1c0707), //60%
      600: const Color(0xff150505), //70%
      700: const Color(0xff0e0303), //80%
      800: const Color(0xff070202), //90%
      900: const Color(0xff000000), //100%
    },
  );
}
