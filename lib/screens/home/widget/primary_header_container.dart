import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../app_manager/local_data.dart';
import 'ciricular_container.dart';
import 'curved_widget.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
    this.height = 370,
  });
  final Widget child;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: CurvedWidget(
        child: Container(
          color: primaryColor,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: CiricularContainer(
                  width: 400,
                  height: 400,
                  radius: 400,
                  margin: const EdgeInsets.all(0),
                  backgroundColor: textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: CiricularContainer(
                  width: 400,
                  margin: const EdgeInsets.all(0),
                  height: 400,
                  radius: 400,
                  backgroundColor: textWhite.withOpacity(0.1),
                ),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
