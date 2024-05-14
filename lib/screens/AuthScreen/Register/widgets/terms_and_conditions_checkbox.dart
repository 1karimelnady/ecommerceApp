import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../app_manager/local_data.dart';
import '../../../../utilites/device/device_utility.dart';

class TermsAndConditionsCheckbox extends StatelessWidget {
  const TermsAndConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool dark = DeviceUtils.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(
          width: 7,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: 'is agree to',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: 'Privacy Policy',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(color: dark ? Colors.white : primaryColor)),
          // TextSpan(text: 'and', style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: 'Terms of use ',
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .apply(color: dark ? Colors.white : primaryColor)),
        ])),
      ],
    );
  }
}
