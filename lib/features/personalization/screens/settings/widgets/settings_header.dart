import 'package:flutter/material.dart';


class SettingsHeader extends StatelessWidget {
  const SettingsHeader({
  super.key,
  });


  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[50],
      ),
      height: 0.4*screenHeight,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(),
          Text("lucas scot", style: Theme.of(context).textTheme.headlineMedium,),
          Text("@lucas003", style: Theme.of(context).textTheme.headlineMedium,),
        ],
      ),
    );
  }
}
