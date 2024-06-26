import 'package:flutter/material.dart';

class GirdLayout extends StatelessWidget {
  const GirdLayout(
      {super.key,
      required this.itemCount,
      this.mainAxisExtent = 288,
      required this.itemBuilder});
  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: mainAxisExtent,
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16),
        itemBuilder: itemBuilder);
  }
}
