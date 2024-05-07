import 'package:flutter/material.dart';

import '../../../app_manager/local_data.dart';
import 'ciricular_container.dart';
import 'curved_widget.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CurvedWidget(
      child: Container(
        color: primaryColor,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              CiricularContainer(
                width: 400,
                height: 400,
                radius: 400,
                backgroundColor: textWhite.withOpacity(0.1),
                top: -150,
                right: -250,
              ),
              CiricularContainer(
                width: 400,
                height: 400,
                radius: 400,
                backgroundColor: textWhite.withOpacity(0.1),
                top: 100,
                right: -300,
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
