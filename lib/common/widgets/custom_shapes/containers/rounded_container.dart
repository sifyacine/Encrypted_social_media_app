import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
  this.width,
  this.height,
  this.radius = TSizes.cardRadiuslg,
  this.child,
  this.showBorder = false,
  this.borderColor = TColors.borderPrimary,
  this.backgroundColor = TColors.white,
  this.padding,
  this.margin,
  this.elevation = 2.0, // Default elevation
  super.key,
});

final double? width;
final double? height;
final double radius;
final Widget? child;
final bool showBorder;
final Color borderColor;
final Color backgroundColor;
final EdgeInsetsGeometry? padding;
final EdgeInsetsGeometry? margin;
final double elevation;

@override
Widget build(BuildContext context) {
  return Material(
    elevation: elevation,
    borderRadius: BorderRadius.circular(radius),
    child: Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
        boxShadow: [
          if (elevation > 0)
            BoxShadow(
              color: Colors.black12,
              blurRadius: elevation, // The blur radius of the shadow
              offset: Offset(0, elevation / 2), // The position of the shadow
            ),
        ],
      ),
      child: child,
    ),
  );
}
}
