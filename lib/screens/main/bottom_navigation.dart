import 'package:flutter/material.dart';
import 'package:multi_vendor_shop/theme/colors.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({
    required this.currentTab,
    required this.onSelectTab,
  });
  final NavItem currentTab;
  final ValueChanged<NavItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(color: primaryColor),
      unselectedIconTheme: IconThemeData(color: accentColor),
      selectedLabelStyle: TextStyle(color: primaryColor),
      unselectedLabelStyle: TextStyle(color: accentColor),
      items: [
        _buildItem(NavItem.home),
        _buildItem(NavItem.chats),
        _buildItem(NavItem.cart),
        _buildItem(NavItem.account),
      ],
      onTap: (index) => onSelectTab(
        NavItem.values[index],
      ),
    );
  }

  BottomNavigationBarItem _buildItem(NavItem tabItem) {
    return BottomNavigationBarItem(
      icon: _iconMatching(tabItem)!,
      label: _navItemLabel[tabItem],
      activeIcon: _iconMatching(tabItem),
    );
  }

  Widget? _iconMatching(NavItem item) {
    return currentTab == item ? _activeIcon[item] : inActiveIcon[item];
  }
}

enum NavItem { home, chats, cart, account }

const Map<NavItem, String> _navItemLabel = {
  NavItem.home: 'Home',
  NavItem.chats: 'Chats',
  NavItem.cart: 'Cart',
  NavItem.account: 'Account',
};

const Map<NavItem, Widget> _activeIcon = {
  NavItem.home: Icon(Icons.home),
  NavItem.chats: Icon(Icons.chat_bubble),
  NavItem.cart: Icon(Icons.shopping_cart),
  NavItem.account: Icon(Icons.account_circle),
};

const Map<NavItem, Icon> inActiveIcon = {
  NavItem.home: Icon(Icons.home_outlined),
  NavItem.chats: Icon(Icons.chat_bubble_outline),
  NavItem.cart: Icon(Icons.shopping_cart_outlined),
  NavItem.account: Icon(Icons.account_circle_outlined),
};
