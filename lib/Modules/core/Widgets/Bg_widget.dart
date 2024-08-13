import 'package:flutter/material.dart';
import 'package:islamiapp/Modules/Layout/Providers/theme_provider.dart';
import 'package:provider/provider.dart';

class BgWidget extends StatelessWidget {
  Widget child;

  BgWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    ThemeProvider provider = Provider.of<ThemeProvider>(context);
    bool isDark = provider.isDarkEnabled();
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(isDark
                  ? "assets/images/dark_bg.png"
                  : "assets/images/bg3.png"),
              fit: BoxFit.fill)),
      child: child,
    );
  }
}
