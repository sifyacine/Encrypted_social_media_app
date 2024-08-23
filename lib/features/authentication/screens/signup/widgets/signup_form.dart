import 'package:encrypted_social_media_app/features/authentication/screens/signup/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../utils/constants/sizes.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// name
          Text(
            S.of(context).name,
            style: Theme.of(context).textTheme.headlineSmall,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 6.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: S.of(context).exampleName,
              prefixIcon: const Icon(Iconsax.user),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          Text(
            S.of(context).email,
            style: Theme.of(context).textTheme.headlineSmall,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 6.0),
          /// Email
          TextFormField(
            decoration: InputDecoration(
              labelText: S.of(context).protonmailField,
              prefixIcon: const Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          Text(
            S.of(context).password,
            style: Theme.of(context).textTheme.headlineSmall,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 6.0),
          /// Password
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: S.of(context).password,
              prefixIcon: const Icon(Iconsax.password_check),
              suffixIcon: const Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          /// Confirm password
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: S.of(context).confirmPasswordField,
              prefixIcon: const Icon(Iconsax.password_check),
              suffixIcon: const Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          /// Terms and conditions checkbox
          const TermsAndConditions(),

          /// Signup button
          const SizedBox(height: TSizes.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => Container());
              },
              child: Text(S.of(context).createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
