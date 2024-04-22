import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../app_manager/local_data.dart';
import '../../../cubit/application_state/main_states.dart';
import '../../../cubit/main_cubit.dart';
import '../../../utilites/device/device_utility.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtils.isDarkMode(context);
    return BlocConsumer<MainCubit, MainStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, state) {
        var cubit = MainCubit.get(context);
        return Positioned(
          bottom: DeviceUtils.getBottomNavigationBarHeight() + 25,
          left: 24,
          child: SmoothPageIndicator(
            controller: cubit.pageController,
            count: 3,
            onDotClicked: cubit.updateDotNavigateClick,
            effect: ExpandingDotsEffect(
                dotHeight: 6, activeDotColor: dark ? lightColor : darkColor),
          ),
        );
      },
    );
  }
}
