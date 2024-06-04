import 'package:flutter/material.dart';

import '../../../app_manager/local_data.dart';
import '../../../common_widget/rounded_container.dart';
import '../../../utilites/device/device_utility.dart';

class CuponCode extends StatelessWidget {
  const CuponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtils.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      backgroundColor: isDark ? black : white,
      padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8, right: 8),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter here',
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor:
                      isDark ? white.withOpacity(0.5) : black.withOpacity(0.5),
                  backgroundColor: grey.withOpacity(0.2),
                  side: BorderSide(
                    color: grey.withOpacity(0.1),
                  ),
                ),
                onPressed: () {},
                child: const Text('Apply')),
          )
        ],
      ),
    );
  }
}
