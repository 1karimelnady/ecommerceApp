import 'package:ecommerce_app/app_manager/local_data.dart';
import 'package:ecommerce_app/common_widget/rounded_container.dart';
import 'package:ecommerce_app/utilites/device/device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class orderListItem extends StatelessWidget {
  const orderListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtils.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) => RoundedContainer(
          showBorder: true,
          padding: EdgeInsets.all(16),
          backgroundColor: isDark ? black : lightColor,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Iconsax.ship,
                    size: 16,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Processing',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .apply(color: primaryColor, fontWeightDelta: 1),
                        ),
                        Text(
                          '07 Nov 2024',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .apply(fontWeightDelta: 1),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Iconsax.arrow_right_34,
                        size: 16,
                      ))
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          Iconsax.tag,
                          size: 16,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('order',
                                  style:
                                      Theme.of(context).textTheme.labelMedium),
                              Text(
                                '[#256f2]',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          Iconsax.calendar,
                          size: 16,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Shipping Date',
                                  style:
                                      Theme.of(context).textTheme.labelMedium),
                              Text(
                                '03 Feb 2025',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
      separatorBuilder: (context, index) => SizedBox(
        height: 16,
      ),
      itemCount: 10,
    );
  }
}
