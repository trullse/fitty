import 'package:fitty/utils/enum/navigation_tabs.dart';
import 'package:flutter/material.dart';

class AppNavigationBar extends StatefulWidget {
  const AppNavigationBar({super.key});

  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  NavigationTabs _tab = NavigationTabs.home;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: _tab.index,
      onDestinationSelected: (index) {
        setState(() {
          _tab = NavigationTabs.values[index];
        });
      },
      destinations: NavigationTabs.values
          .map(
            (tab) => NavigationDestination(
              icon: Icon(tab.icon),
              selectedIcon: Icon(tab.iconSelected),
              label: tab.label(context),
            ),
          )
          .toList(),
    );
  }
}
