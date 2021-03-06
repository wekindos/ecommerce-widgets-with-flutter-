import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webuyapp/blocs/wishlist/wishlist_bloc.dart';
import 'package:webuyapp/models/model.dart';
import 'package:webuyapp/widget/herocarouselcard.dart';

import '../../widget/custom_appbar.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = "/product";
  static Route route({required Product product}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => ProductScreen(product: product));
  }

  final Product product;
  const ProductScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: product.name),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 70,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color: Colors.white,
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: () {},
                child: Text(
                  'ADD TO CART',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.black),
                )),
            BlocBuilder<WishlistBloc, WishlistState>(builder: (context, state) {
              return IconButton(
                onPressed: () {
                  context.read<WishlistBloc>().add(AddWishlistProduct(product));

                  final snackBar = SnackBar(
                    content: Text('Added to your Wishlist ..',style: TextStyle(color: Colors.green),),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
              );
            })
          ]),
        ),
      ),
      body: ListView(
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
            items: [
              HeroCarouselCard(
                product: product,
                category: null,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  color: Colors.black.withAlpha(50),
                  alignment: Alignment.bottomCenter,
                ),
                Container(
                    margin: const EdgeInsets.all(5.0),
                    width: MediaQuery.of(context).size.width - 10,
                    height: 50,
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.name,
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            '${product.price}',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ExpansionTile(
              initiallyExpanded: true,
              title: Text(
                'Product Information',
                style: Theme.of(context).textTheme.headline6,
              ),
              children: [
                ListTile(
                  title: Text(
                    'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Saepe beatae, voluptate totam magni accusantium maiores magnam nisi dolores repudiandae tempora illo quisquam nihil eveniet architecto harum soluta? Voluptatem, quam facere.',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ExpansionTile(
              initiallyExpanded: true,
              title: Text(
                'Delivery Information',
                style: Theme.of(context).textTheme.headline6,
              ),
              children: [
                ListTile(
                  title: Text(
                    'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Saepe beatae, voluptate totam magni accusantium maiores magnam nisi dolores repudiandae tempora illo quisquam nihil eveniet architecto harum soluta? Voluptatem, quam facere.',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      //  HeroCarouselCard( product: product, category: null,),
    );
  }
}
