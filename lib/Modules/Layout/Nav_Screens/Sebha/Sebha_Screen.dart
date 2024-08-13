import 'package:flutter/material.dart';
import 'package:islamiapp/Modules/Core/colors/app_colors.dart';
import 'package:provider/provider.dart';

import '../../../core/theme/ui_utils.dart';
import '../../Providers/theme_provider.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  double _angle = 2 * 3.14;
  int tasbehCounter = 0;
  int currentTitle = 0;
  List<String> tasbehtitle = ['سبحان الله', 'الحمد لله', 'الله اكبر'];

  @override
  Widget build(BuildContext context) {
    ThemeProvider provider = Provider.of<ThemeProvider>(context);
    bool isDark = provider.isDarkEnabled();
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appTranslate(context).sebha,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        // centerTitle: true,
        // elevation: 0,
        // backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 40, bottom: 210),
                child: Image.asset(
                  isDark
                      ? "assets/images/head of seb7a dark.png"
                      : "assets/images/head of seb7a.png",
                  width: mediaQuery.width / 2,
                  height: mediaQuery.height / 8,
                ),
              ),
              Container(
                width: mediaQuery.width / 1.7,
                height: mediaQuery.height / 3.7,
                margin: EdgeInsets.only(top: 72),
                child: Transform.rotate(
                  angle: _angle,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_angle == 0 || tasbehCounter == 33) {
                          _angle = 2 * 3.14;
                          tasbehCounter = 0;
                          (currentTitle == 2)
                              ? currentTitle = 0
                              : currentTitle++;
                        }
                        _angle -= (360 / 33) * (3.16 / 180);
                        tasbehCounter++;
                      });
                    },
                    child: Image.asset(
                      isDark
                          ? "assets/images/body of seb7a dark.png"
                          : "assets/images/body of seb7a.png",
                      width: mediaQuery.width / 1.7,
                      height: mediaQuery.height / 3.7,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: mediaQuery.height / 20),
          Text(
            appTranslate(context).numberoftasbeh,
            style: theme.textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 24, horizontal: 170),
            alignment: Alignment.center,
            width: mediaQuery.width / 8,
            height: mediaQuery.height / 10,
            decoration: BoxDecoration(
                color: isDark ? AppColors.darkPrim : AppColors.lightPrim,
                borderRadius: BorderRadius.circular(25)),
            child: Text(
              tasbehCounter.toString(),
              style: theme.textTheme.titleSmall?.copyWith(color: Colors.white),
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 130),
              child: OutlinedButton(
                  onPressed: () {
                    if (currentTitle == 2) {
                      currentTitle = 0;
                    } else {
                      currentTitle++;
                    }
                    setState(() {
                      tasbehCounter = 0;
                      _angle = 2 * 3.14;
                    });
                  },
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35))),
                    backgroundColor: MaterialStatePropertyAll(
                        isDark ? AppColors.darkSec : AppColors.lightPrim),
                  ),
                  child: Text(tasbehtitle[currentTitle],
                      style: theme.textTheme.titleSmall
                          ?.copyWith(color: Colors.white))))
        ],
      ),
    );
  }
}
