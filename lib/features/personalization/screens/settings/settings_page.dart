
import 'package:encrypted_social_media_app/features/personalization/screens/settings/widgets/settings_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../authentication/controllers/local/local_controller.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Log out', style: Theme.of(context).textTheme.headlineLarge,),
          content: Text('Are you sure you want to logout? You need to sign in again to use this app.', style: Theme.of(context).textTheme.bodySmall,),
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
    final LocaleController localeController = Get.find();
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: TAppBar(
        title: Text("Settings"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// header
            SettingsHeader(),

            /// list of settings menu (body)
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// account settings
                  const SizedBox(height: TSizes.spaceBtwItems,),


                  /*Obx(() {
                    return TSettingsMenuTile(
                      icon: Icons.language,
                      title: 'Language',
                      subtitle: 'Select your preferred language',
                      trailing: DropdownButton<String>(
                        value: localeController.locale.value.languageCode, // Selected language
                        items: [
                          const DropdownMenuItem(value: 'en', child: Text('English')),
                          const DropdownMenuItem(value: 'fr', child: Text('Français')),
                          const DropdownMenuItem(value: 'ar', child: Text('العربية')),
                        ],
                        onChanged: (value) {
                          if (value != null) {
                            localeController.changeLocale(value); // Update locale
                          }
                        },
                      ),
                      onTab: () {},
                    );
                  }),

                   */

                  /// logout button
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: (){
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

