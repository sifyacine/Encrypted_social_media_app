import 'package:flutter/material.dart';

import '../../../../common/appbar/appbar.dart';
import '../../../../common/widgets/login_signup/otp_form.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 8.0, top: 80.0 , left: 20.0, right: 20.0),
        child: Column(
          children: [
            Text(
              "Enter confirmation code",
              style: Theme.of(context).textTheme.headlineMedium!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text("A 4 digits code is sent to"),
            Text("lucasscott3@gmail.com"),
            SizedBox(height: 32.0),
            OtpFrom(),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  child: Text("Resend"),
                  onPressed: () {},
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Confirm"),
                  ),
                ),
                SizedBox(height: 16.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}