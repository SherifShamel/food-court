import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselItemWidget extends StatelessWidget {
  const CarouselItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> carouselItems = [
      Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Image.asset("assets/menu_images/IMG-20240815-WA0004.jpg"),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Image.asset("assets/menu_images/IMG-20240815-WA0005.jpg"),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Image.asset(
          "assets/menu_images/IMG-20240815-WA0006.jpg",
        ),
      ),
    ];
    return CarouselSlider(
      options: CarouselOptions(
        enlargeCenterPage: true,
        autoPlayCurve: Curves.ease,
        aspectRatio: 1 / 2,
        autoPlay: true,
        height: MediaQuery.of(context).size.height * 0.2,
      ),
      items: carouselItems,
    );
  }
}
