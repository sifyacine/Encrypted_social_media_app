import 'package:encrypted_social_media_app/features/personalization/screens/profile/screens/edit_profile/widgets/current_situation.dart';
import 'package:encrypted_social_media_app/features/personalization/screens/profile/screens/edit_profile/widgets/edit_profile_header.dart';
import 'package:encrypted_social_media_app/features/personalization/screens/profile/screens/edit_profile/widgets/other_additions.dart';
import 'package:flutter/material.dart';

import '../../../../../../common/widgets/texts/section_heading.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            EditProfileHeader(),
            SizedBox(height: 12.0),
            TSectionHeading(title: 'Other additions',),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 14.0),
              child: OtherAdditions(),
            ),
            TSectionHeading(title: 'Current situation',),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 14.0),
              child: CurrentSituation(),
            ),
            TSectionHeading(title: 'More',),
          ],
        ),
      ),
    );
  }
}
