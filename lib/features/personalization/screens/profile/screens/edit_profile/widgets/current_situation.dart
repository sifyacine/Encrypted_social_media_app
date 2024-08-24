import 'package:encrypted_social_media_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../../../utils/constants/colors.dart';

class CurrentSituation extends StatelessWidget {
  const CurrentSituation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space the containers evenly
      children: [
        TRoundedContainer(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0 ),
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
                    "Free mode",
                    style: TextStyle(color: isDark ? TColors.white : TColors.kBlack),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Text('Regular features', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              const SizedBox(height: 8),
              const Text('Encrypted all data', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              const SizedBox(height: 8),
              const Text('Free', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("ON"),
                ),
              ),
            ],
          ),
        ),
        TRoundedContainer(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0 ),

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
                    "VIP mode",
                    style: TextStyle(color: isDark ? TColors.white : TColors.kBlack),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text('More features', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              const SizedBox(height: 8),
              const Text('Fast response', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              const SizedBox(height: 8),
              const Text('Starting at 30', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Get it now"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
