import 'package:flutter/material.dart';
import 'package:webuyapp/models/category_model.dart';
import 'package:webuyapp/models/model.dart';
import 'package:webuyapp/screens/home/screens.dart';

import '../screens/error_screen/error_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('this is route ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      case Wishlist_Screen.routeName:
        return Wishlist_Screen.route();
      case Catalog_Screen.routeName:
        return Catalog_Screen.route(category: settings.arguments as Category);


      default:
        return _errorRoute();
    }
  }

  static _errorRoute() {
    return MaterialPageRoute(
        settings: RouteSettings(name: './error'),
        builder: (_) => Scaffold(
              body: Error_screen(),
            ));
  }
}

class WishlistScreen {}
