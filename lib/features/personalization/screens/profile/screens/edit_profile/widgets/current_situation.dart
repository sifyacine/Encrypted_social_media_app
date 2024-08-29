import 'package:encrypted_social_media_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../../../generated/l10n.dart';
import '../../../../../../../utils/constants/colors.dart';
import '../../../../../../authentication/controllers/local/local_controller.dart';

class CurrentSituation extends StatelessWidget {
  const CurrentSituation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LocaleController localeController = Get.find();
    final isDark = localeController.useSystemMode.value
        ? THelperFunctions.isDarkMode(context) // Use system theme if enabled
        : localeController.isDarkMode.value; // Use manual theme otherwise
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0 ),
          backgroundColor: isDark ? TColors.dark : TColors.light,
          height: 220,
          width: 170, // Added width to keep it consistent
          radius: 12,
          showBorder: true,
          elevation: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center content within the row
                children: [
                  Image.asset(
                    'assets/icons/free_mode.png', // Replace with your image asset path
                    height: 50,
                    width: 50,
                  ),
                  Text(
                    S.of(context).freeMode,
                    style: TextStyle(color: isDark ? TColors.white : TColors.kBlack),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(S.of(context).regularFeatures, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              const SizedBox(height: 8),
              Text(S.of(context).encryptedAllData, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              const SizedBox(height: 8),
              Text(S.of(context).free, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(S.of(context).freeButton),
                ),
              ),
            ],
          ),
        ),
        TRoundedContainer(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0 ),

          backgroundColor: isDark ? TColors.dark : TColors.light,
          height: 220,
          width: 170, // Added width to keep it consistent
          radius: 12,
          showBorder: true,
          elevation: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center content within the row
                children: [
                  Image.asset(
                    'assets/icons/vip_mode.png', // Replace with your image asset path
                    height: 50,
                    width: 50,
                  ),
                  Text(
                    S.of(context).vipMode,
                    style: TextStyle(color: isDark ? TColors.white : TColors.kBlack),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(S.of(context).moreFeatures, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              const SizedBox(height: 8),
              Text(S.of(context).fastResponse, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              const SizedBox(height: 8),
              Text(S.of(context).vipPrice, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(S.of(context).vipButton),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
