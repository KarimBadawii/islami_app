import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamiapp/Modules/Layout/Nav_Screens/Quran/sura_deatils.dart';
import 'package:islamiapp/Modules/Layout/Providers/language_provider.dart';
import 'package:islamiapp/Modules/Layout/Providers/theme_provider.dart';
import 'package:islamiapp/Modules/Layout/homeScreen/layout_screen.dart';
import 'package:islamiapp/Modules/Splash/Screens/splash_screen.dart';
import 'package:provider/provider.dart';

import 'Modules/Layout/Nav_Screens/Hadeth/hadeth_details.dart';
import 'Modules/core/theme/app_theme.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
    ),
    ChangeNotifierProvider(
      create: (_) => LanguageProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    LanguageProvider languageProvider = Provider.of<LanguageProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      darkTheme: AppTheme.darkTheme,
      locale: Locale(languageProvider.currentLanguage),
      themeMode: themeProvider.currentTheme,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        LayoutScreen.routeName: (context) => LayoutScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
