import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';


class CustomTabIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomTabIndicatorPainter(onChanged);
  }
}

class _CustomTabIndicatorPainter extends BoxPainter {
  _CustomTabIndicatorPainter(VoidCallback? onChanged) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Paint paint = Paint()
      ..color = TColors.primaryColor
      ..style = PaintingStyle.fill;

    final Paint borderPaint = Paint()
      ..color = TColors.primaryColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    const double indicatorWidth = 72;
    const double indicatorHeight = 40;
    const double borderRadius = 8.0;

    final Rect rect = Offset(
      offset.dx + configuration.size!.width / 2 - indicatorWidth / 2,
      configuration.size!.height - indicatorHeight,
    ) &
    const Size(indicatorWidth, indicatorHeight);

    final RRect rRect =
    RRect.fromRectAndRadius(rect, const Radius.circular(borderRadius));

    canvas.drawRRect(rRect, paint);
    canvas.drawRRect(rRect, borderPaint);
  }
}
