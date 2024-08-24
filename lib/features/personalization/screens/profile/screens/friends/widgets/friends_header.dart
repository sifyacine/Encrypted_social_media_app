import 'package:flutter/material.dart';

import '../../../../../../../common/widgets/custom_shapes/containers/search_bar_container.dart';

class FriendsHeader extends StatelessWidget {
  const FriendsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
          child: Text("Search your friends list"),
        ),
        TSearchContainer(text: 'search @username',),
      ]
    );
  }
}
