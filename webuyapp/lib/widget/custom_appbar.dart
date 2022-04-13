import 'package:flutter/material.dart';
import 'package:webuyapp/config/app_router.dart';

import '../screens/Wishlist/wishlist_screen.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const CustomAppBar({Key? key,
  required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Container(
        // color: Colors.black,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Text(title,
        style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white)),
      ),
      iconTheme: IconThemeData(color: Colors.white),
      actions: [
        IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Wishlist_Screen()));
        }, icon: Icon(Icons.favorite),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
