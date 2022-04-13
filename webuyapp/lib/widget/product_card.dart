import 'package:flutter/material.dart';
import 'package:webuyapp/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final double widthFactor;
  final double leftPosition;
  final bool isWishlist;

  const ProductCard({
    Key? key,
    required this.product,
    this.widthFactor = 2.5,
    this.leftPosition = 5,
   this.isWishlist=false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/product', arguments: product);
      },
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / widthFactor,
            height: 150,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: leftPosition,
            top: 60,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(color: Colors.black.withAlpha(50)),
            ),
          ),
          Positioned(
            top: 60,
            left: leftPosition,
            child: Container(
              width: MediaQuery.of(context).size.width / 2.5 - 10,
              height: 70,
              decoration: BoxDecoration(color: Colors.black.withAlpha(50)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Text(product.name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal)),
                          Text('\$${product.price}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_circle,
                            color: Colors.white,
                          )),
                    ),
                  
                    isWishlist
                        ? Expanded(
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.remove_circle,
                                  color: Colors.red,
                                )),
                          )
                        : SizedBox(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
