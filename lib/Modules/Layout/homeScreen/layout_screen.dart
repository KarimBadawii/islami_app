import 'package:flutter/material.dart';
import 'package:islamiapp/Modules/Core/Widgets/Bg_widget.dart';
import 'package:islamiapp/Modules/Layout/Nav_Screens/Radio/Radio_Screen.dart';
import 'package:islamiapp/Modules/Layout/Nav_Screens/Sebha/Sebha_Screen.dart';
import 'package:islamiapp/Modules/Layout/Nav_Screens/Settings/Settings_Screen.dart';
import 'package:islamiapp/Modules/Layout/homeScreen/Bottom_Nav_Item.dart';
import 'package:islamiapp/Modules/core/theme/ui_utils.dart';

import '../Nav_Screens/Hadeth/Hadeth_Screen.dart';
import '../Nav_Screens/Quran/Quran_Screen.dart';

class LayoutScreen extends StatefulWidget {
  static const String routeName = "layout";

  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int selectedIndex = 0;
  List<Widget> screens = [
    QuranScreen(),
    HadethScreen(),
    SebhaScreen(),
    RadioScreen(),
    SettingsScreen(),
  ];

  // List <AppLocalizations> titles = ["Islami", "Hadeth", "Sebha", "Radio", "Settings",];

  @override
  Widget build(BuildContext context) {
    return BgWidget(
      child: Scaffold(
        // appBar: AppBar(
        //   title:  Text(
        //     appTranslate(context).islami,style: Theme.of(context).textTheme.titleMedium,
        //   ),
        // centerTitle: true,
        // elevation: 0,
        // backgroundColor: Colors.transparent,
        // ),
        // backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int value) {
            selectedIndex = value;
            setState(() {});
          },
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavItem(
                "assets/icons/moshaf_gold.png", appTranslate(context).quran),
            BottomNavItem(
              "assets/icons/Group 6.png",
              appTranslate(context).hadeth,
            ),
            BottomNavItem(
                "assets/icons/sebha_blue.png", appTranslate(context).sebha),
            BottomNavItem(
                "assets/icons/radio_blue.png", appTranslate(context).radio),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 30,
              ),
              label: appTranslate(context).settings,
            ),
          ],
        ),
        body: screens[selectedIndex],
      ),
    );
  }
}
