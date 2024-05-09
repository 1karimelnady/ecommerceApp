import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app_manager/routes_manager.dart';
import '../screens/AuthScreen/login/login_screen.dart';
import 'application_state/main_states.dart';

class MainCubit extends Cubit<MainStates> {
  MainCubit() : super(InitialState());
  Dio dio = Dio();

  static MainCubit get(context) => BlocProvider.of(context);

  PageController pageController = PageController();
  int currentIndex = 0;
  updatePage(index) {
    currentIndex = index;
    emit(UpdateState());
  }

  updateDotNavigateClick(index) {
    currentIndex = index;
    pageController.jumpTo(index);
    emit(UpdateDotNavigationState());
  }

  nextPage(context) {
    int page = currentIndex + 1;

    if (currentIndex == 2) {
      RoutesManager.navigatorAndRemove(context, const LoginScreen());
    } else {
      currentIndex = page;
      pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  skipPage() {
    currentIndex = 2;
    pageController.jumpToPage(2);
    emit(SkipState());
  }

  int currentCarouselIndex = 0;
  updateCarousel(index) {
    currentCarouselIndex = index;
    emit(CarouselSliderState());
  }
}
