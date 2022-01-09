import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:multi_vendor_shop/repository/app_config.dart';
import 'package:multi_vendor_shop/screens/main/main_screen.dart';
import 'package:multi_vendor_shop/screens/on_boarding/on_board_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  static const String id = '/onboarding';

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  double scrollPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                )),
            child: PageView(
              onPageChanged: (page) {
                setState(() {
                  scrollPosition = page.toDouble();
                });
              },
              children: [
                OnBoardPage(
                  boardImage: Icons.copy_all_outlined,
                  title: "Welcome to the app",
                ),
                OnBoardPage(
                  boardImage: Icons.shopping_cart_sharp,
                  title: "Do you want to \nsell something?",
                ),
                OnBoardPage(
                  boardImage: Icons.arrow_right_alt_outlined,
                  title: "Do you want to \nbuy something?",
                ),
                OnBoardPage(
                  boardImage: Icons.phone_android_outlined,
                  title: "Do you want to \nbuy phone?",
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: DotsIndicator(
                    dotsCount: 4,
                    position: scrollPosition,
                    decorator: DotsDecorator(
                      activeColor: Colors.black,
                    ),
                  ),
                ),
                scrollPosition != 3
                    ? TextButton(
                        onPressed: () => goToHomeScreen(context),
                        child: Text(
                          "Skip >>",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      )
                    : ElevatedButton(
                        onPressed: () => goToHomeScreen(context),
                        child: Text("Start Shopping"),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> goToHomeScreen(BuildContext context) {
    AppConfig.onBoardingWatched(true);
    return Navigator.pushReplacementNamed(
      context,
      MainScreen.id,
    );
  }
}
