import 'dart:io';

import 'package:ecommerce_app/cubit/application_state/main_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'cubit/main_cubit.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

List<XFile> allImages = [];

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: BlocConsumer<MainCubit, MainStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: const Color(0xff339999),
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.reorder,
                  color: Colors.white,
                ),
              ),
              title: const Text(
                'شجرة المقرن',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ))
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),

                  Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        ImagePicker picker = ImagePicker();
                        List<XFile> images = await picker.pickMultiImage();
                        setState(() {
                          allImages.addAll(images);
                        });
                      },
                      child: Text(
                        'Add',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                  ),

                  ElevatedButton(
                      onPressed: () async {
                        MainCubit.get(context).addNormaNews(
                          title: 'karim6',
                          images: allImages.map((e) => File(e.path)).toList(),
                          description: 'description',
                          context: context,
                          newsDate: '12-2-2574',
                        );
                      },
                      child: const Text('play'))

                  // Container(
                  //   width: double.infinity,
                  //   color: const Color(0xff297A7A),
                  //   child: Stack(
                  //     children: [
                  //       CarouselSlider(
                  //         options: CarouselOptions(
                  //           viewportFraction: 0.6,
                  //         ),
                  //         items: const [
                  //           Image(
                  //             image: AssetImage("images/shoes.jpg"),
                  //           ),
                  //           Image(
                  //             image: AssetImage("images/shoes.jpg"),
                  //           ),
                  //           Image(
                  //             image: AssetImage("images/shoes.jpg"),
                  //           ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // const SizedBox(
                  //   height: 5,
                  // ),
                  // Row(
                  //   mainAxisSize: MainAxisSize.min,
                  //   children: [
                  //     Container(
                  //       width: 20,
                  //       height: 4,
                  //       color: primaryColor,
                  //       margin: const EdgeInsets.only(left: 5),
                  //     ),
                  //     Container(
                  //       width: 20,
                  //       height: 4,
                  //       color: primaryColor,
                  //       margin: const EdgeInsets.only(left: 5),
                  //     ),
                  //     Container(
                  //       width: 20,
                  //       height: 4,
                  //       color: primaryColor,
                  //       margin: const EdgeInsets.only(left: 5),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
            // floatingActionButton: Container(
            //   decoration: const BoxDecoration(
            //     color: Color(0xff297A7A),
            //   ),
            //   child: const Row(
            //     mainAxisSize: MainAxisSize.max,
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            //       Column(
            //         mainAxisSize: MainAxisSize.min,
            //         children: [
            //           Text('kkk'),
            //           Icon(Icons.home),
            //         ],
            //       ),
            //       Column(
            //         mainAxisSize: MainAxisSize.min,
            //         children: [
            //           Text('kkk'),
            //           Icon(Icons.home),
            //         ],
            //       ),
            //       Column(
            //         mainAxisSize: MainAxisSize.min,
            //         children: [
            //           Text('kkk'),
            //           Icon(Icons.home),
            //         ],
            //       ),
            //       Column(
            //         mainAxisSize: MainAxisSize.min,
            //         children: [
            //           Text('kkk'),
            //           Icon(Icons.home),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
          );
        },
      ),
    );
  }
}
