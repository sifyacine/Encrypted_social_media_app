
import 'package:encrypted_social_media_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:encrypted_social_media_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            /// logo, title and subtitle
            const TLoginHeader(),

            /// Form
            const TLoginForm(),

            /// Divider
            Divider(color: isDark ? TColors.kDarkGrey : TColors.kGrey, thickness: 0.6, indent: 5, endIndent: 20,)

          ],
        ),
      ),
    );
  }
}