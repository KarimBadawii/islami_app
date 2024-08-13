import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/theme/ui_utils.dart';
import '../../Providers/theme_provider.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({super.key});

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider provider = Provider.of<ThemeProvider>(context);
    bool isDark = provider.isDarkEnabled();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appTranslate(context).radio,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        // centerTitle: true,
        // elevation: 0,
        // backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(
              width: 400,
              height: 222,
              child: Image.asset("assets/images/Radio.png"),
            ),
          ),
          Center(child: Text(appTranslate(context).radio)),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              child: Image.asset(isDark
                  ? "assets/images/Group 5 dark.png"
                  : "assets/images/Group 5.png"),
            ),
          )
        ],
      ),
    );
  }
}
