import 'package:flutter/material.dart';

import '../../../app_manager/local_data.dart';
import '../../../utilites/device/device_utility.dart';

class RatingProgressIndicator extends StatelessWidget {
  const RatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });
  final String text;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
            )),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: DeviceUtils.getScreenWidth(context) * 0.8,
            child: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(7),
              minHeight: 10,
              backgroundColor: grey,
              value: value,
              valueColor: AlwaysStoppedAnimation(primaryColor),
            ),
          ),
        ),
      ],
    );
  }
}
