import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../features/authentication/controllers/local/local_controller.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class OtpFrom extends StatelessWidget {
  const OtpFrom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LocaleController localeController = Get.find();
    final isDark = localeController.useSystemMode.value
        ? THelperFunctions.isDarkMode(context) // Use system theme if enabled
        : localeController.isDarkMode.value; // Use manual theme otherwise
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 64,
            width: 64,
            child: TextFormField(
              onChanged: (value){
                if (value.length == 1){
                  FocusScope.of(context).nextFocus();
                }
              },
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: isDark ? TColors.light : TColors.dark),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
          SizedBox(width: 8.0),
          SizedBox(
            height: 64,
            width: 64,
            child: TextFormField(
                onChanged: (value){
                  if (value.length == 1){
                    FocusScope.of(context).nextFocus();
                  }
                },
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: isDark ? TColors.light : TColors.dark),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
          SizedBox(width: 8.0),
          SizedBox(
            height: 64,
            width: 64,
            child: TextFormField(
              onChanged: (value){
                if (value.length == 1){
                  FocusScope.of(context).nextFocus();
                }
              },
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: isDark ? TColors.light : TColors.dark),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
          SizedBox(width: 8.0),
          SizedBox(
            height: 64,
            width: 64,
            child: TextFormField(
              onChanged: (value){
                if (value.length == 1){
                  FocusScope.of(context).nextFocus();
                }
              },
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: isDark ? TColors.light : TColors.dark),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
