import 'package:ecommerce_app/utilites/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../../app_manager/local_data.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final bool dark = DeviceUtils.isDarkMode(context);
    return Row(
      children: [
        Flexible(
          child: Divider(
            color: dark ? darkGrey : grey,
            thickness: 0.5,
            endIndent: 5,
            indent: 60,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? darkGrey : grey,
            thickness: 0.5,
            endIndent: 60,
            indent: 5,
          ),
        ),
        const SizedBox(
          height: 32,
        ),
      ],
    );
  }
}
