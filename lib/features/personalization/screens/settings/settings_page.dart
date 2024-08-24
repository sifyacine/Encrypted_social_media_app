import 'package:encrypted_social_media_app/features/personalization/screens/settings/widgets/settings_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../authentication/controllers/local/local_controller.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final LocaleController localeController = Get.find();

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Log out',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          content: Text(
            'Are you sure you want to logout? You need to sign in again to use this app.',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          actions: <Widget>[
            OutlinedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add your logout logic here
                Get.back();
              },
              child: const Text('Logout'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: const TAppBar(
        title: Text("Settings"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// header
            const SettingsHeader(),

            /// list of settings menu (body)
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Language selection dropdown
                  const SizedBox(height: TSizes.spaceBtwItems),
                  ListTile(
                    title: Text('Change Language', style: Theme.of(context).textTheme.bodyLarge),
                    trailing: Obx(
                          () => DropdownButton<String>(
                        value: localeController.locale.value.languageCode,
                        onChanged: (String? newLang) {
                          if (newLang != null) {
                            localeController.changeLocale(newLang);
                          }
                        },
                        items: <DropdownMenuItem<String>>[
                          DropdownMenuItem(
                            value: 'en',
                            child: Text('English'),
                          ),
                          DropdownMenuItem(
                            value: 'ar',
                            child: Text('Arabic'),
                          ),
                        ],
                      ),
                    ),
                  ),

                  /// Logout button
                  const SizedBox(height: TSizes.spaceBtwItems),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        _showLogoutDialog(context);
                      },
                      child: const Text('Logout'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
