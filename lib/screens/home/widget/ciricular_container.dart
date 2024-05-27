import 'package:flutter/material.dart';

class CiricularContainer extends StatelessWidget {
  const CiricularContainer({
    super.key,
    required this.width,
    required this.height,
    this.radius,
    this.backgroundColor,
    this.top,
    this.right,
    this.left,
    this.margin,
  });

  final double width, height;
  final double? radius;
  final EdgeInsets? margin;
  final double? left;
  final double? right;
  final double? top;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: margin,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius ?? 0),
      ),
    );
  }
}
