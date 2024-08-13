import 'package:flutter/material.dart';
import 'package:islamiapp/Modules/Layout/Providers/language_provider.dart';
import 'package:provider/provider.dart';

import '../../../Core/colors/app_colors.dart';

class LanguageButtomSheet extends StatelessWidget {
  const LanguageButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageProvider languageProvider = Provider.of<LanguageProvider>(context);
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                languageProvider.changeLanguage("en");
              },
              child: languageProvider.currentLanguage == "en"
                  ? getSelectedItem(context, "English")
                  : getUnSelectedItem(context, "English")),
          Divider(
            height: 10,
          ),
          InkWell(
              onTap: () {
                languageProvider.changeLanguage("ar");
              },
              child: languageProvider.currentLanguage == "ar"
                  ? getSelectedItem(context, "العربيه")
                  : getUnSelectedItem(context, "العربيه")),
        ],
      ),
    );
  }

  Widget getSelectedItem(BuildContext context, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: AppColors.lightPrim),
        ),
        Icon(Icons.check)
      ],
    );
  }

  Widget getUnSelectedItem(BuildContext context, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Icon(Icons.check_box_outline_blank)
      ],
    );
  }
}
