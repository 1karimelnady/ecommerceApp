import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff339999),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.reorder,
            color: Colors.white,
          ),
        ),
        title: Text(
          'شجرة المقرن',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
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
              color: Color(0xff297A7A),
              child: Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 0.6,
                    ),
                    items: [
                      Container(
                        child: Image(
                          image: AssetImage("images/shoes.jpg"),
                        ),
                      ),
                      Container(
                        child: Image(
                          image: AssetImage("images/shoes.jpg"),
                        ),
                      ),
                      Container(
                        child: Image(
                          image: AssetImage("images/shoes.jpg"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
