import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/app_manager/local_data.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
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
            Container(
              width: double.infinity,
              color: const Color(0xff297A7A),
              child: Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 0.6,
                    ),
                    items: const [
                      Image(
                        image: AssetImage("images/shoes.jpg"),
                      ),
                      Image(
                        image: AssetImage("images/shoes.jpg"),
                      ),
                      Image(
                        image: AssetImage("images/shoes.jpg"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 20,
                  height: 4,
                  color: primaryColor,
                  margin: const EdgeInsets.only(left: 5),
                ),
                Container(
                  width: 20,
                  height: 4,
                  color: primaryColor,
                  margin: const EdgeInsets.only(left: 5),
                ),
                Container(
                  width: 20,
                  height: 4,
                  color: primaryColor,
                  margin: const EdgeInsets.only(left: 5),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        decoration: const BoxDecoration(
          color: Color(0xff297A7A),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('kkk'),
                Icon(Icons.home),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('kkk'),
                Icon(Icons.home),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('kkk'),
                Icon(Icons.home),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('kkk'),
                Icon(Icons.home),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
