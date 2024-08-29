import 'package:encrypted_social_media_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; // Import this for localization
import 'features/authentication/controllers/local/local_controller.dart';
import 'features/authentication/screens/login/login_screen.dart';
import 'generated/l10n.dart'; // Import the generated localization file

class MyApp extends StatelessWidget {
  final LocaleController localeController = Get.put(LocaleController());

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      ThemeMode themeMode;

      // Determine the theme mode based on system and dark mode settings
      if (localeController.useSystemMode.value) {
        themeMode = ThemeMode.system;
      } else {
        themeMode = localeController.isDarkMode.value ? ThemeMode.dark : ThemeMode.light;
      }

      return GetMaterialApp(
        locale: localeController.locale.value,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        themeMode: themeMode,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        home: const LoginScreen(),
      );
    });
  }
}
