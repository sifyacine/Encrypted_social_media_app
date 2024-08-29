import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../generated/l10n.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../authentication/controllers/local/local_controller.dart';

class CommentCard extends StatelessWidget {
  final String userName;
  final String actionType; // New field to determine action type
  final String? profilePictureUrl;

  const CommentCard({
    Key? key,
    required this.userName,
    required this.actionType, // Required action type
    this.profilePictureUrl,
  }) : super(key: key);

  // Function to generate action message based on the action type
  String _getActionMessage(BuildContext context) {
    switch (actionType) {
      case 'comment':
        return S.of(context).commentedOnYourPost;
      case 'like':
        return S.of(context).likedYourPost;
      case 'reply':
        return S.of(context).repliedToYourComment;
      case 'share':
        return S.of(context).sharedYourPost;
      default:
        return S.of(context).newNotification; // fallback or default notification message
    }
  }

  @override
  Widget build(BuildContext context) {
    final LocaleController localeController = Get.find();
    final isDark = localeController.useSystemMode.value
        ? THelperFunctions.isDarkMode(context) // Use system theme if enabled
        : localeController.isDarkMode.value; // Use manual theme otherwise
    return Card(
      color: isDark? TColors.kBlack : TColors.white,
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        leading: profilePictureUrl != null
            ? CircleAvatar(
          backgroundImage: AssetImage(profilePictureUrl!),
        )
            : CircleAvatar(
          child: Icon(Icons.person),
        ),
        title: Text(
          userName,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(_getActionMessage(context)), // Use the localized message
        trailing: Icon(Icons.comment, color: Theme.of(context).primaryColor),
      ),
    );
  }
}
