import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/login_signup/otp_form.dart';
import '../../../../generated/l10n.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
          showBackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 8.0, top: 80.0 , left: 20.0, right: 20.0),
        child: Column(
          children: [
            Text(
              S.of(context).confirmationCodeTitle,
              style: Theme.of(context).textTheme.headlineMedium!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(S.of(context).confirmationCodeSubTitle),
            const Text("lucasscott3@gmail.com"),
            const SizedBox(height: 32.0),
            const OtpFrom(),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  child: Text(S.of(context).resend),
                  onPressed: () {},
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(S.of(context).confirm),
                  ),
                ),
                const SizedBox(height: 16.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}