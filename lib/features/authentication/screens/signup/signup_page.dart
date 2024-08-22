import 'package:encrypted_social_media_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:encrypted_social_media_app/features/authentication/screens/signup/widgets/signup_header.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Title
              SignupHeader(),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Form
              const SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}