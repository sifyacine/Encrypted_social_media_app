import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../features/authentication/controllers/local/local_controller.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    Key? key,
    this.width = 56,
    this.height = 56,
    this.padding = TSizes.sm,
    required this.image,
    this.backgroundColor,
    this.overlayColor,
    this.fit = BoxFit.cover,
    this.isNetworkImage = false,
  }) : super(key: key);

  final double width, height, padding;
  final String image;
  final Color? backgroundColor;
  final Color? overlayColor;
  final BoxFit fit;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    final LocaleController localeController = Get.find();
    final isDark = localeController.useSystemMode.value
        ? THelperFunctions.isDarkMode(context) // Use system theme if enabled
        : localeController.isDarkMode.value; // Use manual theme otherwise
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ??
            (isDark ? TColors.kBlack : TColors.white),
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: Image(
          image: isNetworkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          fit: fit,
          color: overlayColor,
          colorBlendMode: BlendMode.srcOver,
        ),
      ),
    );
  }
}