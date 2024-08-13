import 'package:flutter/material.dart';
import 'package:islamiapp/Modules/Layout/Providers/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeButtomSheet extends StatefulWidget {
  const ThemeButtomSheet({super.key});

  @override
  State<ThemeButtomSheet> createState() => _ThemeButtomSheetState();
}

class _ThemeButtomSheetState extends State<ThemeButtomSheet> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                setState(() {
                  themeProvider.changeTheme(ThemeMode.light);
                });
              },
              child: themeProvider.isDarkEnabled()
                  ? getUnSelectedItem(context, "Light")
                  : getSelectedItem(context, "Light")),
          Divider(
            height: 10,
          ),
          InkWell(
              onTap: () {
                setState(() {
                  themeProvider.changeTheme(ThemeMode.dark);
                });
              },
              child: themeProvider.isDarkEnabled()
                  ? getSelectedItem(context, "Dark")
                  : getUnSelectedItem(context, "Dark")),
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
          style: Theme.of(context).textTheme.bodyMedium,

          // ?.copyWith(color: AppColors.darkSec),
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
