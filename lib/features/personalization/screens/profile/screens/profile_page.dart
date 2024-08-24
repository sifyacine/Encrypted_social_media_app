import 'package:encrypted_social_media_app/features/personalization/screens/profile/screens/widgets/profile_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../settings/settings_page.dart';
import 'edit_profile/edit_profile.dart';
import 'friends/friends_page.dart';
import 'messages/messages_page.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(actions: [
        IconButton(
          onPressed: () {
            Get.to(() => const SettingsScreen());
          },
          icon: const Icon(Iconsax.setting),
        ),
      ]),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            const ProfileHeader(),
            Expanded(
              child: Column(
                children: [
                  PreferredSize(
                    preferredSize: const Size.fromHeight(50.0),
                    child: Material(
                      color: isDark ? Colors.black : TColors.white,
                      child: TabBar(
                        indicatorColor: isDark ? Colors.black : TColors.white,
                        dividerColor: isDark ? Colors.black : TColors.white,
                        labelColor: TColors.primaryColor,
                        unselectedLabelColor:
                            isDark ? Colors.white : Colors.black,
                        tabs: [
                          Tab(text: S.of(context).tabFriends),
                          Tab(text: S.of(context).tabEditProfile),
                          Tab(text: S.of(context).tabMessages),
                        ],
                      ),
                    ),
                  ),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        FriendsScreen(),
                        EditProfileScreen(),
                        MessageScreen(),
                      ],
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
