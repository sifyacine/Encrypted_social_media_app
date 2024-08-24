import 'package:flutter/material.dart';

import '../../../../../../../common/widgets/custom_shapes/containers/search_bar_container.dart';
import '../../../../../../../generated/l10n.dart';

class FriendsHeader extends StatelessWidget {
  const FriendsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
          child: Text(S.of(context).search),
        ),
        TSearchContainer(text: S.of(context).noFriends,),
      ]
    );
  }
}
