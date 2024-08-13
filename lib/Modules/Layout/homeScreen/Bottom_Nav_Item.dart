import 'package:flutter/material.dart';

class BottomNavItem extends BottomNavigationBarItem {
  BottomNavItem(String iconPath, String title)
      : super(
            icon: ImageIcon(
              AssetImage(iconPath),
              size: 40,
            ),
            label: title);
}
