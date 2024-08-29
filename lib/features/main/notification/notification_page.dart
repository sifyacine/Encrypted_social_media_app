import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/appbar/appbar.dart';
import '../../../common/widgets/appbar/tabbar.dart';
import '../../../common/widgets/texts/section_heading.dart';
import '../../../generated/l10n.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../../authentication/controllers/local/local_controller.dart';
import 'widgets/comments_card.dart';
import 'widgets/friend_request_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  // Example data
  final List<FriendRequestCard> friendRequestCards = const [
    FriendRequestCard(
      userName: 'Nico Rodger',
      profilePictureUrl: 'assets/images/profile_image_3.jpg',
    ),
    FriendRequestCard(
      userName: 'Jane Doe',
      profilePictureUrl: 'assets/images/profile_image_4.jpg',
    ),
    FriendRequestCard(
      userName: 'John Smith',
      profilePictureUrl: 'assets/images/profile_image_5.jpg',
    ),
  ];

  final List<CommentCard> commentNotifications = const [
    CommentCard(
      userName: 'John',
      actionType: 'comment',
      profilePictureUrl: 'assets/images/profile_image_3.jpg',
    ),
    CommentCard(
      userName: 'Jane',
      actionType: 'reply',
      profilePictureUrl: 'assets/images/profile_image_4.jpg',
    ),
    CommentCard(
      userName: 'Mike',
      actionType: 'like',
      profilePictureUrl: 'assets/images/profile_image_5.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final LocaleController localeController = Get.find();
    final isDark = localeController.useSystemMode.value
        ? THelperFunctions.isDarkMode(context) // Use system theme if enabled
        : localeController.isDarkMode.value; // Use manual theme otherwise


    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: TAppBar(
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Iconsax.setting)),
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 12.0),
            child: Column(
              children: [
                Text(
                  S.of(context).notification,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 24.0),
                Align(
                  alignment: Alignment.center,
                  child: TabBar(
                    dividerColor: isDark ? Colors.black : Colors.white,
                    indicator: CustomTabIndicator(),
                    isScrollable: true,
                    labelPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                    labelColor: Colors.white,
                    indicatorPadding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
                    unselectedLabelColor: isDark ? Colors.white70 : Colors.black,
                    indicatorColor: Colors.transparent, // Remove line under tabs
                    tabs: [
                      Tab(text: S.of(context).all),
                      Tab(text: S.of(context).newNotification),
                      Tab(text: S.of(context).read),
                      Tab(text: S.of(context).delete),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                Expanded(
                  child: TabBarView(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0),
                              child: TSectionHeading(
                                title: S.of(context).friendRequest,
                                showActionButton: friendRequestCards.length > 2,
                                buttonTitle: S.of(context).viewAll,
                                onPressed: () {
                                  // Navigate to the friend request page
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (_) => Container()),
                                  );
                                },
                              ),
                            ),
                            // Display up to 2 friend request cards
                            ...friendRequestCards.take(2).toList(),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                              child: TSectionHeading(
                                title: S.of(context).comments,
                                showActionButton: commentNotifications.length > 2,
                                buttonTitle: S.of(context).viewAll,
                                onPressed: () {
                                  // Navigate to the comments page
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (_) => Container()),
                                  );
                                },
                              ),
                            ),
                            // Display up to 2 comment notifications
                            ...commentNotifications.take(2).toList(),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                              child: TSectionHeading(title: S.of(context).messages),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                              child: Stack(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: TColors.primaryColor,
                                      minimumSize: const Size(0, 36), // Reduced height
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0), // Adjust padding for width
                                    ),
                                    child: Text(S.of(context).openInChat),
                                  ),
                                  Positioned(
                                    top: -4,
                                    left: -4,
                                    child: Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: const BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Text(
                                        '9+', // Change this to the actual number of messages if available
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Center(child: Text('New')),
                      const Center(child: Text('Read')),
                      const Center(child: Text('Delete All')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
