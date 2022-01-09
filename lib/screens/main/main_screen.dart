import 'package:flutter/material.dart';
import 'package:multi_vendor_shop/screens/account/account_screen.dart';
import 'package:multi_vendor_shop/screens/chat/chat_screen.dart';
import 'package:multi_vendor_shop/screens/home/home_screen.dart';
import 'package:multi_vendor_shop/screens/shopping_cart/shopping_cart.dart';

import 'bottom_navigation.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);
  static const String id = '/home';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _currentTab = NavItem.home;

  void _selectTab(NavItem navItem) {
    setState(() => _currentTab = navItem);
  }

  List<Widget> _screens = [
    HomeScreen(),
    ShoppingCart(),
    ChatScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(NavItem.values.indexOf(_currentTab)),
      bottomNavigationBar: BottomNavigation(
        currentTab: _currentTab,
        onSelectTab: _selectTab,
      ),
    );
  }
}
