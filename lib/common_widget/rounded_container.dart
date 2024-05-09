import 'package:flutter/material.dart';

import '../app_manager/local_data.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = 16,
    this.showBorder = false,
    required this.padding,
    this.borderColor = borderPrimary,
    this.backgroundColor = Colors.white,
    required this.margin,
    required this.child,
  });

  final double? width;
  final double? height;
  final double? radius;
  final bool showBorder;
  final EdgeInsets? padding;
  final Color? borderColor;
  final Color? backgroundColor;
  final EdgeInsets? margin;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15),
          border: showBorder ? Border.all(color: Colors.grey) : null),
      child: child,
    );
  }
}
