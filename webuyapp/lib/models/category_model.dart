import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [name, imageUrl];
  static List<Category> Categories = [
    Category(
        name: 'Laptops',
        imageUrl:
            'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bGFwdG9wc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),

             Category(
        name: 'Phones',
        imageUrl:
            'https://images.unsplash.com/photo-1609252925148-b0f1b515e111?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHBob25lc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),

             Category(
        name: 'Television',
        imageUrl:
            'https://images.unsplash.com/photo-1593784991095-a205069470b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dHZ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
             Category(
        name: 'Radio',
        imageUrl:
            'https://images.unsplash.com/photo-1593078166039-c9878df5c520?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cmFkaW98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
  ];
}
