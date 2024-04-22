import 'package:ecommerce_app/cubit/application_state/main_states.dart';
import 'package:ecommerce_app/cubit/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utilites/device/device_utility.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = MainCubit.get(context);
        return Positioned(
          top: DeviceUtils.getAppBarHeight(context),
          right: 24,
          child: TextButton(
            onPressed: () => cubit.skipPage(),
            child: const Text('Skip'),
          ),
        );
      },
    );
  }
}
