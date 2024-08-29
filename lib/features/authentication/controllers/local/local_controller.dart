import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  var locale = const Locale('en').obs; // Default locale
  var isDarkMode = false.obs; // Dark mode setting
  var useSystemMode = false.obs; // System mode setting

  void changeLocale(String langCode) {
    var newLocale = Locale(langCode);
    locale.value = newLocale;
    Get.updateLocale(newLocale);
  }

  void toggleDarkMode(bool isEnabled) {
    if (!useSystemMode.value) {
      isDarkMode.value = isEnabled;
      // Save the dark mode setting to persistent storage
      // Replace with actual implementation to save settings
    }
  }

  void toggleSystemMode(bool isEnabled) {
    useSystemMode.value = isEnabled;
    if (isEnabled) {
      // Set theme mode to system and disable manual dark mode
      isDarkMode.value = false; // Optional: ensure it doesn't conflict
      // Update the app's theme mode to system
      // This might require reinitializing the app or theme settings
    } else {
      // Enable manual dark mode setting when system mode is disabled
      // Update the app's theme mode to use the dark mode value
      // This might require reinitializing the app or theme settings
    }
    // Save the system mode setting to persistent storage
    // Replace with actual implementation to save settings
  }

  @override
  void onInit() {
    super.onInit();
    // Load saved settings from persistent storage
    _loadSettings();
  }

  void _loadSettings() {
    // Load saved settings from persistent storage
    // Replace with actual implementation to load settings
    // For example:
    // isDarkMode.value = loadedDarkModeValue;
    // useSystemMode.value = loadedSystemModeValue;
  }
}
