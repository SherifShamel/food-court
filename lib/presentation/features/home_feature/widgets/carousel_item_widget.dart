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
        child: Image.network(
            "https://cdn.sanity.io/images/czqk28jt/prod_bk_us/2b60390402530831a1e97c98d699337a5eefad6c-2000x1000.png?w=650&q=80&fit=max&auto=format"),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Image.network(
            "https://cache.dominos.com/wam/prod/market/EG/_en/images/promo/ab4b455d-9a23-406e-bd39-bc3b93838e94.jpg"),
      ),
    ];
    return CarouselSlider(
      options: CarouselOptions(
        // clipBehavior: Clip.antiAlias,
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
