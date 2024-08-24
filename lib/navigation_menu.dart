
import 'package:encrypted_social_media_app/utils/constants/colors.dart';
import 'package:encrypted_social_media_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/personalization/screens/profile/screens/profile_page.dart';



class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          backgroundColor: isDark ? TColors.dark : TColors.light,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.firstline), label: ''),
            NavigationDestination(icon: Icon(Iconsax.book_1), label: ''),
            NavigationDestination(icon: Icon(Iconsax.flash_circle5, size: 56.0), label: ''),
            NavigationDestination(icon: Icon(Iconsax.notification), label: ''),
            NavigationDestination(icon: Icon(Iconsax.user), label: ''),
          ],
        ),
      ),
      body: Obx(() =>  controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [Container(), Container(), Container(), Container(), const ProfileScreen()];

}


