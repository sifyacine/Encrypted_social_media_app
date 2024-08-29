import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../generated/l10n.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../authentication/controllers/local/local_controller.dart';

class FriendRequestCard extends StatelessWidget {
  final String userName;
  final String profilePictureUrl;

  const FriendRequestCard({
    Key? key,
    required this.userName,
    required this.profilePictureUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LocaleController localeController = Get.find();
    final isDark = localeController.useSystemMode.value
        ? THelperFunctions.isDarkMode(context) // Use system theme if enabled
        : localeController.isDarkMode.value; // Use manual theme otherwise
    return Card(
      color: isDark ? Colors.black : Colors.white,
      elevation: 4,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(profilePictureUrl),
              radius: 30,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 6.0),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          minimumSize: const Size(0, 36), // Reduced height
                          padding: const EdgeInsets.symmetric(horizontal: 8.0), // Adjust padding for width
                        ),
                        child: Text(S.of(context).accept),
                      ),
                      const SizedBox(width: 6.0),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          minimumSize: const Size(0, 36), // Reduced height
                          padding: const EdgeInsets.symmetric(horizontal: 8.0), // Adjust padding for width
                        ),
                        child:  Text(S.of(context).sendMsg),
                      ),
                      const SizedBox(width: 6.0),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          minimumSize: const Size(0, 36), // Reduced height for icon button
                          padding: const EdgeInsets.all(8), // Padding for icon
                        ),
                        child: const Icon(Icons.person, color: Colors.red),
                      ),
                    ],
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
