import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final String price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isPopular,
    required this.isRecommended,
  });

  @override
  List<Object?> get props => [
        name,
        category,
        imageUrl,
        price,
        isRecommended,
        isPopular,
      ];

  static List<Product> products = [
    Product(
      name: 'Product name',
      category: 'Radio',
      imageUrl:
          'https://images.unsplash.com/photo-1593078166039-c9878df5c520?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cmFkaW98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      price: '45.5',
      isPopular: false,
      isRecommended: true,
    ),


    Product(
      name: 'Product name',
      category: 'Laptops',
      imageUrl:
          'https://images.unsplash.com/photo-1629131726692-1accd0c53ce0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bGFwdG9wc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      price: '50.5',
      isPopular: true,
      isRecommended: false,
    ),

    Product(
      name: 'Product name',
      category: 'Phones',
      imageUrl:
          'https://images.unsplash.com/photo-1613688270362-8b26189c0782?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBob25lc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      price: '50.5',
      isPopular: false,
      isRecommended: true,
    ),
    Product(
      name: 'Product name',
      category: 'Phones',
      imageUrl:
          'https://images.unsplash.com/photo-1613688270362-8b26189c0782?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBob25lc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=6https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bGFwdG9wc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      price: '50.5',
      isPopular: true,
      isRecommended: false,
    ),
    
    Product(
      name: 'Product name',
      category: 'Radio',
      imageUrl:
          'https://images.unsplash.com/photo-1593078166039-c9878df5c520?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cmFkaW98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      price: '45.5',
      isPopular: false,
      isRecommended: true,
    ),


    Product(
      name: 'Product name',
      category: 'Laptops',
      imageUrl:
          'https://images.unsplash.com/photo-1629131726692-1accd0c53ce0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bGFwdG9wc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      price: '50.5',
      isPopular: true,
      isRecommended: false,
    ),

    Product(
      name: 'Product name',
      category: 'Phones',
      imageUrl:
          'https://images.unsplash.com/photo-1613688270362-8b26189c0782?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBob25lc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      price: '50.5',
      isPopular: false,
      isRecommended: true,
    ),
    Product(
      name: 'Product name',
      category: 'Phones',
      imageUrl:
          'https://images.unsplash.com/photo-1613688270362-8b26189c0782?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBob25lc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=6https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bGFwdG9wc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      price: '50.5',
      isPopular: true,
      isRecommended: false,
    ),
  ];
}
