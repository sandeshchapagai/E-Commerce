import 'package:ecommerce/Utils/Components/Color/color.dart';
import 'package:ecommerce/Utils/Components/Font/font_size.dart';
import 'package:ecommerce/View/StartUp_Screeen/startScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 8),(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_)=>StartupCarousel())
      );
    });
  }

  @override
  void dispose(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset("assets/Logo.png"),
            Text('Shoe Space',style: TextStyle(fontWeight: FontWeight.bold,fontSize:FontSizes.large),),
            Spacer()
          ],
        )
      ),

    );
  }
}
