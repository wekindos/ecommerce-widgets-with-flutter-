
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:webuyapp/models/model.dart';
import 'package:webuyapp/widget/product_Carousel.dart';
import 'package:webuyapp/widget/section_title.dart';

import '../../widget/custom_appbar.dart';
import '../../widget/customnavbar.dart';
import '../../widget/herocarouselcard.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "/";
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => HomeScreen());
  }

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Webuy'),
      bottomNavigationBar: CustomNavBar(),
      body: ListView(
        children: [Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                initialPage: 2,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                autoPlay: true,
              ),
              items: Category.Categories.map(
                  (category) => HeroCarouselCard(category: category, product: null,)).toList(),
            ),
            SectionTitle(title: 'RECOMMENDED'),
            ProductCarousel(products: Product.products
            .where((product) => product.isRecommended )
            .toList()),
      
            SectionTitle(title: 'MOST POPULAR'),
            ProductCarousel(products: Product.products
            .where((product) => product.isPopular )
            .toList()),
          ],
        ),
        ]
      ),
    );
  }
}

