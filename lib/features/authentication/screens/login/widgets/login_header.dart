import 'package:flutter/material.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
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
      child: const Image(
        image: AssetImage("assets/logos/app_logo-removebg.png"),
      )
    );
  }
}