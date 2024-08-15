import 'package:flutter/material.dart';

enum NavigationTabs {
  home,
  camera,
  settings,
}

extension NavigationTabsExt on NavigationTabs {
  IconData get icon {
    switch (this) {
      case NavigationTabs.home:
        return Icons.home_outlined;
      case NavigationTabs.camera:
        return Icons.camera_outlined;
      case NavigationTabs.settings:
        return Icons.settings_outlined;
    }
  }

  IconData get iconSelected {
    switch (this) {
      case NavigationTabs.home:
        return Icons.home;
      case NavigationTabs.camera:
        return Icons.camera;
      case NavigationTabs.settings:
        return Icons.settings;
    }
  }

  String label(BuildContext context) {
    switch (this) {
      case NavigationTabs.home:
        return 'Home';
      case NavigationTabs.camera:
        return 'AI Camera';
      case NavigationTabs.settings:
        return 'Settings';
    }
  }
}
