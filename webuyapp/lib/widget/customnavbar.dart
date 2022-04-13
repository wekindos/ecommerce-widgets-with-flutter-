
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        margin:EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              
                onPressed: () {
                  // navigation page
                  Navigator.pushNamed(context, '/');
                },
                icon: Icon(Icons.home,color: Colors.white)
                ),

                IconButton(
                onPressed: () {
                  // navigation page
                  Navigator.pushNamed(context, '/cart');
                },
                icon: Icon(Icons.shopping_bag,color: Colors.white,)
                ),

                IconButton(
                onPressed: () {
                  // navigation page
                  Navigator.pushNamed(context, '/user');
                },
                icon: Icon(Icons.person, color: Colors.white,)
                ),
          ],
        ),
      ),
    );
  }
}
