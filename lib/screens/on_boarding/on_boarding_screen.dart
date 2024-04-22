import 'package:ecommerce_app/cubit/application_state/main_states.dart';
import 'package:ecommerce_app/screens/on_boarding/widgets/on_boarding_widget.dart';
import 'package:ecommerce_app/screens/on_boarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecommerce_app/screens/on_boarding/widgets/onboarding_next_page.dart';
import 'package:ecommerce_app/screens/on_boarding/widgets/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/main_cubit.dart';

@immutable
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: BlocConsumer<MainCubit, MainStates>(
        listener: (context, sate) {},
        builder: (context, state) {
          var cubit = MainCubit.get(context);

          return Scaffold(
            body: Stack(
              children: [
                PageView(
                  controller: cubit.pageController,
                  onPageChanged: cubit.updatePage,
                  children: const [
                    OnBoardingPage(
                      title: 'Choose your product',
                      image: 'assets/images/Animation - 1713687522311.gif',
                      subTitle:
                          'welcome to a world of limitless choices -  your perfect product',
                    ),
                    OnBoardingPage(
                      title: 'Select payment Method',
                      image: 'assets/images/Animation - 1713687798779.gif',
                      subTitle:
                          'For seamless transactions, choose your payment path ',
                    ),
                    OnBoardingPage(
                      title: 'Deliver at your door step',
                      image: 'assets/images/Animation - 1713688578890.gif',
                      subTitle: 'From our Doorstep to Yours - Swift, Secure ',
                    ),
                  ],
                ),
                const OnBoardingSkipButton(),
                const OnBoardingDotNavigation(),
                const OnBoardingNextPage(),
              ],
            ),
          );
        },
      ),
    );
  }
}
