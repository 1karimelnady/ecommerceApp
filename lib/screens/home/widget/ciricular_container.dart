import 'package:flutter/material.dart';

class CiricularContainer extends StatelessWidget {
  const CiricularContainer({
    super.key,
    required this.width,
    required this.height,
    required this.radius,
    required this.backgroundColor,
    this.top,
    this.right,
    this.left,
  });

  final double width, height, radius;
  final double? left;
  final double? right;
  final double? top;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      right: right,
      left: left,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
