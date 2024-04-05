import 'package:ecommerce/Utils/Routes/routes_name.dart';
import 'package:ecommerce/View/MainScreen/Cart/add_cart.dart';
import 'package:ecommerce/View/MainScreen/Cart/cart.dart';
import 'package:ecommerce/View/MainScreen/Favorite/favorite.dart';
import 'package:ecommerce/View/StartUp_Screeen/startScreen.dart';
import 'package:ecommerce/View/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../View/MainScreen/main_scren.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen());

      case RoutesName.startup_crasuel:
        return MaterialPageRoute(
            builder: (BuildContext context) => OnBoardingPage());

      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const MainScreen());

      case RoutesName.add_cart:
        return MaterialPageRoute(
            builder: (BuildContext context) => const AddCart());

      case RoutesName.cart:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Cart());

      case RoutesName.favorite:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Favorite());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('Null route'),
            ),
          );
        });
    }
  }
}
