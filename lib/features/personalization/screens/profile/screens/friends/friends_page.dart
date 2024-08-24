import 'package:encrypted_social_media_app/features/personalization/screens/profile/screens/friends/widgets/friends_header.dart';
import 'package:flutter/material.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
      child: Column(
        children: [
          FriendsHeader(),
          Expanded(
            child: Center(
              child: Text("You have no friends"),
            ),
          ),
        ],
      ),
    );
  }
}