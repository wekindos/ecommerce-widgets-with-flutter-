import 'package:flutter/material.dart';

import '../../widget/custom_appbar.dart';
import '../../widget/customnavbar.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = "/cart";
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => CartScreen());
  }

  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Cart Page'),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
