import 'package:flutter/material.dart';
import 'package:webuyapp/models/product_model.dart';
import 'package:webuyapp/widget/product_card.dart';

class ProductCarousel extends StatelessWidget {
  final List<Product> products;

  const ProductCarousel({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 165,
        child: ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: ProductCard(
                  product: products[index],
                ),
              );
            }));
  }
}
