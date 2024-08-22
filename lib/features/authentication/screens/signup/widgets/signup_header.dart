import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/section_heading.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TSectionHeading(title: 'Sign up'),
          SizedBox(height: 6.0),
          Text("Create an account to get started"),
        ],
      ),
    );
  }
}