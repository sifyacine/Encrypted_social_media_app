import 'package:flutter/material.dart';

import '../../../../../../common/widgets/images/circular_images.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Center(
        child: Column(
          children: [
            const TCircularImage(
              width: 100,
              height: 100,
              image: 'assets/images/profile_image.jpg',

            ),
            const SizedBox(height: 6.0),
            Text(
              '@username',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}
