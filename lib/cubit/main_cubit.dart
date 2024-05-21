import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:http_parser/http_parser.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
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

  Future<List<File>> compressImages(List<File> images) async {
    List<File> compressedImages = [];

    for (var imageFile in images) {
      final tempDir = await getTemporaryDirectory();
      final targetPath =
          p.join(tempDir.path, '${p.basename(imageFile.path)}_compressed.jpg');

      var compressedXFile = await FlutterImageCompress.compressAndGetFile(
        imageFile.path,
        targetPath,
        quality: 20,
        // minWidth: 1000,
        // minHeight: 1000,
      );

      if (compressedXFile != null) {
        File compressedFile = File(compressedXFile.path);
        compressedImages.add(compressedFile);
      }
    }

    return compressedImages;
  }

  Future<bool> addNormaNews(
      {required String title,
      required String description,
      required List<File> images,
      List<String>? relationalUsersArray,
      required BuildContext context,
      required String newsDate}) async {
    List<File> compressedImages = await compressImages(images);
    FormData formData = FormData();

    for (File file in compressedImages) {
      formData.files.add(MapEntry(
        "images",
        await MultipartFile.fromFile(
          file.path,
          filename: p.basename(file.path),
          contentType: MediaType('image', 'jpeg'),
        ),
      ));
    }

    Map<String, dynamic> params = {
      "NewsMainType": "normal",
      "newsDate": newsDate,
      "title": title,
      "desc": 'replaceMultipleLinks(text: description)',
      "userId": '658e7cdd00f3a0ec372719e7',
    };

    params.forEach((key, value) {
      formData.fields.add(MapEntry(key, value.toString()));
    });

    print(params);
    try {
      var response = await dio.post(
          "http://104.248.162.83/api/v1/news?page=1&limit=5&type=normal&status=true",
          options: Options(method: 'POST', headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ",
            "fbToken": "",
            "admin": true
          }),
          data: formData);

      if (response.statusCode == 201) {
        // emit(AddNormalNewsSuccess());
        print(response.data);
        return true;
      }
    } on DioException catch (error) {
      print(error.toString());
      if (error.error is SocketException) {
        // emit(ServerErrorContact());
      } else if (error.response!.statusCode == 401) {
        // emit(ContactLoginError2());
      } else {
        // emit(AddNormalNewsError());
      }
      return false;
    }

    return false;
  }
}
