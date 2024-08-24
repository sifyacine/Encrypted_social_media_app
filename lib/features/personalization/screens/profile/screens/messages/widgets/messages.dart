import 'package:flutter/material.dart';

import '../../../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../../../utils/constants/colors.dart';
import '../../../../../../../utils/helpers/helper_functions.dart';

class MessagesCard extends StatelessWidget {
  final String image;
  final String name;
  final String oldMessage;
  final Color backgroundColor;
  final VoidCallback? onTap;
  final bool seen;
  final String date;

  const MessagesCard({
  super.key,
  required this.image,
  required this.name,
  this.onTap,
  this.backgroundColor = Colors.green,
  required this.oldMessage,
  required this.seen,
  required this.date,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(
              image,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  oldMessage,
                  style: TextStyle(
                    fontSize: 14,
                    color: seen ? Colors.grey : isDark ? TColors.white : Colors.black,
                    fontWeight: seen ? FontWeight.normal : FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                date,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              if (!seen)
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Icon(
                    Icons.circle,
                    color: Colors.blue,
                    size: 10,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}