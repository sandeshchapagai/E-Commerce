import 'package:ecommerce/Utils/Routes/routes_name.dart';
import 'package:ecommerce/View/MainScreen/Cart/add_cart.dart';
import 'package:ecommerce/View/StartUp_Screeen/startScreen.dart';
import 'package:ecommerce/View/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../View/MainScreen/main_scren.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case RoutesName.login:
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => LoginScreen());
      //
      // case RoutesName.signup:
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => SignUpScreen());

      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen());

      case RoutesName.startup_crasuel:
        return MaterialPageRoute(
            builder: (BuildContext context) => StartupCarousel());

      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const MainScreen());

      case RoutesName.add_cart:
        return MaterialPageRoute(
            builder: (BuildContext context) => const AddCart());

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
