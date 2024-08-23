
import 'package:encrypted_social_media_app/utils/constants/colors.dart';
import 'package:encrypted_social_media_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';



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
            NavigationDestination(icon: Icon(Iconsax.home), label: 'home'),
            NavigationDestination(icon: Icon(Iconsax.message), label: "chat"),
            NavigationDestination(icon: Icon(Iconsax.notification), label: 'notifications'),
            NavigationDestination(icon: Icon(Iconsax.setting), label: 'settings'),
          ],
        ),
      ),
      body: Obx(() =>  controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [Container(), Container(), Container(), Container()];

}


