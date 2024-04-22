import 'package:ecommerce_app/cubit/application_state/main_states.dart';
import 'package:ecommerce_app/cubit/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import '../../../app_manager/local_data.dart';
import '../../../utilites/device/device_utility.dart';

class OnBoardingNextPage extends StatelessWidget {
  const OnBoardingNextPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtils.isDarkMode(context);
    return BlocConsumer<MainCubit, MainStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = MainCubit.get(context);
        return Positioned(
          right: 24,
          bottom: DeviceUtils.getBottomNavigationBarHeight(),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: dark ? primaryColor : Colors.black),
            onPressed: () => cubit.nextPage(context),
            child: const Icon(Iconsax.arrow_right_3),
          ),
        );
      },
    );
  }
}
