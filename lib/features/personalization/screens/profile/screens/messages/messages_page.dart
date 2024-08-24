import 'package:encrypted_social_media_app/features/personalization/screens/profile/screens/messages/widgets/messages.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> messages = [
      {
        'image': 'assets/images/profile_image_1.jpg',
        'name': 'Marcos Aliman',
        'oldMessage': 'See you soon friend',
        'seen': false,
        'date': '6:07 PM',
      },
      {
        'image': 'assets/images/profile_image_2.jpg',
        'name': 'Jhon Goe',
        'oldMessage': "don't forget our plan",
        'seen': true,
        'date': '3:00 PM',
      },
      {
        'image': 'assets/images/profile_image_3.jpg',
        'name': 'Nico Rodger',
        'oldMessage': 'done deal',
        'seen': false,
        'date': '6:07 PM',
      },
      {
        'image': 'assets/images/profile_image_4.jpg',
        'name': 'Sarah Johnson',
        'oldMessage': 'Meeting at 5?',
        'seen': true,
        'date': '3:00 PM',
      },
      {
        'image': 'assets/images/profile_image_5.jpg',
        'name': 'Tom Harris',
        'oldMessage': 'Lunch tomorrow?',
        'seen': false,
        'date': '1:47 PM',
      },
      {
        'image': 'assets/images/profile_image_7.webp',
        'name': 'Lisa Wong',
        'oldMessage': 'Project deadline extended',
        'seen': true,
        'date': '12:43 PM',
      },
      {
        'image': 'assets/images/profile_image_6.jpg',
        'name': 'Alex Kim',
        'oldMessage': 'Call me when you can',
        'seen': false,
        'date': '6:07 AM',
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      child: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: MessagesCard(
              image: message['image'] as String,
              name: message['name'] as String,
              oldMessage: message['oldMessage'] as String,
              seen: message['seen'] as bool,
              date: message['date'] as String,
            ),
          );
        },
      ),
    );
  }
}