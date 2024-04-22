import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app_manager/routes_manager.dart';
import '../test_screen.dart';
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

  // if (currentIndex == 2) {
  // RoutesManager.navigatorAndRemove(context, const Test());
  // } else {
  nextPage(context) {
    int page = currentIndex + 1;

    if (currentIndex == 2) {
      RoutesManager.navigatorAndRemove(context, const Test());
    } else {
      pageController.jumpToPage(page);
    }
  }

  skipPage() {
    currentIndex = 2;
    pageController.jumpToPage(2);
    emit(SkipState());
  }
}
