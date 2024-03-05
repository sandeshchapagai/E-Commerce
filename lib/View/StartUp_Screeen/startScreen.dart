import 'package:ecommerce/View/StartUp_Screeen/Screens.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class StartupCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
          initialPage: 0,
          enableInfiniteScroll: false,
          viewportFraction: 1.0,
        ),
        items: [
          CarouselScreen1(),
          CarouselScreen2(),
        ],
      ),
    );
  }
}
