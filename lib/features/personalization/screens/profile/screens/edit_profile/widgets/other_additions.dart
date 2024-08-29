import 'package:encrypted_social_media_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../../../generated/l10n.dart';
import '../../../../../../../utils/constants/colors.dart';
import '../../../../../../authentication/controllers/local/local_controller.dart';

class OtherAdditions extends StatelessWidget {
  const OtherAdditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LocaleController localeController = Get.find();
    final isDark = localeController.useSystemMode.value
        ? THelperFunctions.isDarkMode(context) // Use system theme if enabled
        : localeController.isDarkMode.value; // Use manual theme otherwise
    return Wrap(
      alignment: WrapAlignment.center, // Aligns children to the center
      spacing: 12.0, // Space between containers horizontally
      runSpacing: 12.0, // Space between containers vertically if wrapped
      children: [
        TRoundedContainer(
          backgroundColor: isDark? TColors.dark : TColors.light,

          width: 110, // Consistent width for all containers
          height: 150, // Consistent height for all containers
          radius: 12, // Rounded corners
          showBorder: true, // Show border for each container
          elevation: 0, // Elevation for shadow effect
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.check_circle, size: 50, color: isDark? TColors.white : TColors.kBlack), // Increased icon size
              const SizedBox(height: 8), // Space between icon and text
              Text(
                S.of(context).ipCheck,
                style: const TextStyle(fontSize: 14), // Reduced text size
                textAlign: TextAlign.center, // Center text alignment
                maxLines: 2, // Allow up to 2 lines for text
                overflow: TextOverflow.ellipsis, // Handle overflow with ellipsis
              ),
              const SizedBox(height: 8), // Space between text and + icon
              CircleAvatar(
                radius: 15,
                backgroundColor: isDark? Colors.white : Colors.black,
                child: Icon(Icons.add, size: 16, color: isDark? TColors.dark : TColors.light),
              ),
            ],
          ),
        ),
        TRoundedContainer(
          backgroundColor: isDark? TColors.dark : TColors.light,

          width: 110,
          height: 150,
          radius: 12,
          showBorder: true,
          elevation: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person, size: 50, color: isDark? TColors.white : TColors.kBlack),
              const SizedBox(height: 8),
              Text(
                S.of(context).twoFactor,
                style: const TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              CircleAvatar(
                radius: 15,
                backgroundColor: isDark? Colors.white : Colors.black,
                child: Icon(Icons.add, size: 16, color: isDark? TColors.dark : TColors.light),
              ),
            ],
          ),
        ),
        TRoundedContainer(
          backgroundColor: isDark? TColors.dark : TColors.light,
          width: 110,
          height: 150,
          radius: 12,
          showBorder: true,
          elevation: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.delete_forever, size: 50, color: isDark? TColors.white : TColors.kBlack),
              const SizedBox(height: 8),
              Text(
                S.of(context).autoDeleteMsgs,
                style: const TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              CircleAvatar(
                radius: 15,
                backgroundColor: isDark? Colors.white : Colors.black,
                child: Icon(Icons.add, size: 16, color: isDark? TColors.dark : TColors.light),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
