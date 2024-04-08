import 'package:ecommerce/View/StartUp_Screeen/startScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    // Use Future.delayed with async/await for cleaner syntax
    Future<void>.delayed(const Duration(seconds: 5), () async {
      await SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: SystemUiOverlay.values,
      );
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => OnBoardingPage()),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:Colors.white,
      body: Center(
        child: Image(image: AssetImage('assets/Logo.png')),
      ),
    );
  }
}
