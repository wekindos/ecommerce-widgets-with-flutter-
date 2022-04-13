import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webuyapp/blocs/wishlist/wishlist_bloc.dart';
import 'package:webuyapp/config/app_router.dart';
import 'package:webuyapp/config/theme.dart';
import 'package:webuyapp/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:[ 
        BlocProvider(
        create: (_)=> WishlistBloc()..add(StartWishlist())),
        ],
     child:MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'webuy app',
      theme:theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,

    ),
    );
  }
}


