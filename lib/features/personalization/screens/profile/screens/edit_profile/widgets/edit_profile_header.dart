import 'package:flutter/material.dart';

import '../../../../../../../generated/l10n.dart';

class EditProfileHeader extends StatelessWidget {
  const EditProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildContainer(
          context: context,
          text: S.of(context).editUsername,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
          onTap: () {
            // Handle edit username tap
          },
        ),
        SizedBox(width: 8),
        _buildContainer(
          context: context,
          text: S.of(context).profilePicture,
          borderRadius: BorderRadius.zero,
          onTap: () {
            // Handle profile picture tap
          },
        ),
        SizedBox(width: 8),
        _buildContainer(
          context: context,
          text: S.of(context).editPassword,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          onTap: () {
            // Handle edit password tap
          },
        ),
      ],
    );
  }

  Widget _buildContainer({
    required BuildContext context,
    required String text,
    required BorderRadius borderRadius,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            border: Border.all(color: Colors.grey),
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 10.0, // Reduced text size
              ),
            ),
          ),
        ),
      ),
    );
  }
}