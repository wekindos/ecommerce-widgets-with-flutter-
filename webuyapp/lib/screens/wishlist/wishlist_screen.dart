import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webuyapp/blocs/wishlist/wishlist_bloc.dart';
import 'package:webuyapp/widget/product_card.dart';

import '../../widget/custom_appbar.dart';
import '../../widget/customnavbar.dart';

class Wishlist_Screen extends StatelessWidget {
  static const String routeName = "/wishlist";
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => Wishlist_Screen());
  }

  const Wishlist_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Wishlist Page'),
        bottomNavigationBar: CustomNavBar(),
        body:BlocBuilder<WishlistBloc, WishlistState>
        (builder: (context, state){
          if (state is WishlistLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
            if(state is WishlistLoaded){
               return GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 2.2),
              itemCount: state.wishlist.products.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                    child: ProductCard(
                  product: state.wishlist.products[index],
                  leftPosition: 100,
                  widthFactor: 1.1,
                  isWishlist: true,
                ));
              },
              );}
            else {return Text('Something went wrong...!');
            }
          }
        )
    );
  }
}
