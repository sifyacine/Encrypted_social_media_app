import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../navigation_menu.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../otp/otp_page.dart';
import '../../signup/signup_page.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm

  ({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      child: Form(
        child: Padding(
          padding:
          const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TSectionHeading(title: S.of(context).loginTitle,),
              SizedBox(height: 12.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: S
                      .of(context)
                      .email,
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(Iconsax.eye_slash),
                  labelText: S
                      .of(context)
                      .password,
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields / 2),

              /// forget password
              TextButton(
                onPressed: () {
                  Get.to(() => OtpScreen());
                },
                child: Text(
                    S
                    .of(context)
                    .forgetPassword),
              ),
              const SizedBox(width: TSizes.spaceBtwSections),

              Column(
                children: [

                  /// Sign in button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => NavigationMenu()),
                      child: Text(
                          S
                              .of(context)
                              .login
                      ),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// Not a member? Register now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(S
                          .of(context)
                          .notAMember),
                      TextButton(
                        onPressed: () => Get.to(() => SignUpScreen()),
                        child: Text(
                            S
                                .of(context)
                                .registerNow
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
