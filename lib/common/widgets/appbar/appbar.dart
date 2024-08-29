
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../features/authentication/controllers/local/local_controller.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_functions.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({
    Key? key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
  }) : super(key: key);

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final LocaleController localeController = Get.find();
    final isDark = localeController.useSystemMode.value
        ? THelperFunctions.isDarkMode(context) // Use system theme if enabled
        : localeController.isDarkMode.value; // Use manual theme otherwise
    return AppBar(
      backgroundColor: isDark ? TColors.kBlack : TColors.white,
      centerTitle: true,
      automaticallyImplyLeading: false,
      leading: showBackArrow
          ? IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Iconsax.arrow_left))
          : leadingIcon != null ? IconButton(
          onPressed: () {
            leadingOnPressed;
          },
          icon: Icon(leadingIcon)) : null,
      title: title,
      actions: actions,
    );
  }

  @override
  // Todo: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
