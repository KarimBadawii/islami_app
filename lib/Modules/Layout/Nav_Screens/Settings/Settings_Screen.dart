import 'package:flutter/material.dart';
import 'package:islamiapp/Modules/core/theme/ui_utils.dart';
import 'package:provider/provider.dart';

import '../../../Core/colors/app_colors.dart';
import '../../Providers/theme_provider.dart';
import 'Language_buttom_sheet.dart';
import 'Theme_buttom_sheet.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider provider = Provider.of<ThemeProvider>(context);
    bool isDark = provider.isDarkEnabled();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appTranslate(context).settings,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              appTranslate(context).theme,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Divider(
              height: 10,
            ),
            InkWell(
              onTap: () {
                showThemeButtomSheet();
              },
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: isDark ? AppColors.darkSec : AppColors.lightPrim,
                        width: 2.5),
                    borderRadius: BorderRadius.circular(35),
                    color: Theme.of(context).cardColor),
                child: Text(
                  appTranslate(context).light,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
            const Divider(
              height: 10,
            ),
            Text(
              appTranslate(context).language,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Divider(
              height: 10,
            ),
            InkWell(
              onTap: () {
                showLanguageButtomSheet();
              },
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: isDark ? AppColors.darkSec : AppColors.lightPrim,
                        width: 2.5),
                    borderRadius: BorderRadius.circular(35),
                    color: Theme.of(context).cardColor),
                child: Text(
                  appTranslate(context).english,
                  style: Theme.of(context).textTheme.bodyMedium,
                  //   appTranslate(context).arabic
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showThemeButtomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const ThemeButtomSheet();
      },
    );
  }

  void showLanguageButtomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const LanguageButtomSheet();
      },
    );
  }
}
