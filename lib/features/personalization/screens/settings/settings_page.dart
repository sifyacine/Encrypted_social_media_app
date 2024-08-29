import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../authentication/controllers/local/local_controller.dart';

class SettingsScreen extends StatelessWidget {
  final LocaleController localeController = Get.find();

  @override
  Widget build(BuildContext context) {
    final isDark = localeController.useSystemMode.value
        ? THelperFunctions.isDarkMode(context) // Use system theme if enabled
        : localeController.isDarkMode.value; // Use manual theme otherwise

    return Scaffold(
      backgroundColor: isDark ? TColors.dark : TColors.light,
      appBar: const TAppBar(
        title: Text("Settings"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: isDark ? TColors.kBlack : TColors.white,
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Dark mode toggle
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Dark mode"),
                                Obx(() {
                                  return Switch(
                                    value: !localeController.useSystemMode.value && localeController.isDarkMode.value,
                                    onChanged: (value) {
                                      if (!localeController.useSystemMode.value) {
                                        localeController.toggleDarkMode(value);
                                      }
                                    },
                                  );
                                }),
                              ],
                            ),
                            // System mode toggle
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Use system mode"),
                                Obx(() {
                                  return Checkbox(
                                    value: localeController.useSystemMode.value,
                                    onChanged: (value) {
                                      localeController.toggleSystemMode(value!);
                                    },
                                  );
                                }),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(),
                    // Language setting
                    ListTile(
                      title: Text(
                        'Language',
                        style: TextStyle(
                          color: isDark ? TColors.white : TColors.kBlack,
                        ),
                      ),
                      subtitle: Obx(() {
                        // Observe changes to locale
                        return Text(localeController.locale.value.languageCode);
                      }),
                      trailing: const Icon(Icons.language),
                      onTap: () => _showLanguageBottomSheet(context),
                    ),
                    const Divider(),
                    // Other settings
                    ListTile(
                      leading: Icon(Icons.home,
                        color: isDark ? TColors.light : TColors.dark,),
                      title: Text("Pages", style: TextStyle(
                        color: isDark ? TColors.white : TColors.kBlack,
                      ),),
                      onTap: () {
                        // Navigate to Pages
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.group, color: isDark ? TColors.light : TColors.dark,),
                      title: Text("Groups", style: TextStyle(
                        color: isDark ? TColors.white : TColors.kBlack,
                      ),),
                      onTap: () {
                        // Navigate to Groups
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                height: 72,
                width: double.infinity,
                color: isDark ? TColors.kBlack : TColors.white,
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 24, // Adjust size as needed
                          backgroundImage: AssetImage("assets/images/profile_image.jpg"),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "@user_name",
                          style: TextStyle(
                              fontSize: 16), // Adjust text style as needed
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Iconsax.verify5,
                          size: TSizes.iconXs, // Ensure this is defined
                          color: TColors.primaryColor, // Ensure this is defined
                        ),
                      ],
                    ),
                    IconButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: TColors.dark, // Background color
                      ),
                      onPressed: () {},
                      icon: const Icon(Icons.edit,
                          color: Colors.white), // Icon on the button
                    )
                  ],
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                height: 172,
                width: double.infinity,
                color: isDark ? TColors.kBlack : TColors.white,
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Column(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showLanguageBottomSheet(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text('English', style: TextStyle(color: isDark ? TColors.light : TColors.dark,)),
              onTap: () {
                localeController.changeLocale('en');
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Arabic', style: TextStyle(color: isDark ? TColors.light : TColors.dark,)),
              onTap: () {
                localeController.changeLocale('ar');
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('French', style: TextStyle(color: isDark ? TColors.light : TColors.dark,)),
              onTap: () {
                localeController.changeLocale('fr');
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
