import 'package:flutter/material.dart';
import 'package:webuyapp/models/model.dart';
import 'package:webuyapp/widget/widget.dart';


class Catalog_Screen extends StatelessWidget {
  static const String routeName = "/catalog";
  static Route route({required Category category}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => Catalog_Screen(category: category));
  }

  final Category category;
  const Catalog_Screen({required this.category});

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts = Product.products
        .where((product) => product.category == category.name)
        .toList();
    return Scaffold(
        appBar: CustomAppBar(title: category.name),
        bottomNavigationBar: CustomNavBar(),
        body: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.15),
            itemCount: categoryProducts.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                  child: ProductCard(
                product: categoryProducts[index],
                widthFactor: 2.2,
              ));
            }));
  }
}
