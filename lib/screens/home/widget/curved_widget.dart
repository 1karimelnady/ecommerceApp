import 'package:flutter/material.dart';

import 'curved_shapes.dart';

class CurvedWidget extends StatelessWidget {
  const CurvedWidget({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurvedShapes(),
      child: child,
    );
  }
}
