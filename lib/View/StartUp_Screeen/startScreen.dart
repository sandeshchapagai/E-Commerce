import 'package:ecommerce/Utils/Components/Color/color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../Utils/Routes/routes_name.dart';
class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.pushNamed(context, RoutesName.home);
  }
  Widget _buildImage(String assetName, [double width = double.infinity]) {
    return  Container(
        child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(
                  100.0), // Adjust the border radius as needed
              bottomRight: Radius.circular(
                  100.0), // Adjust the border radius as needed
            ),
            child: Container(child: Image.asset("assets/$assetName",width: width,))));
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      image
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      // bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: AppColors.backgroundColor,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: AppColors.backgroundColor,
      allowImplicitScrolling: true,
      autoScrollDuration: 30000,
      infiniteAutoScroll: true,

      pages: [
        PageViewModel(
          title: "Fractional shares",
          body:
          "Instead of having to buy an entire share, invest any amount you want.",
          image: _buildImage('shoe.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(

          title: "Learn as you go",
          body:
          "Download the Stockpile app and master the market with our mini-lesson.",
          image: _buildImage('shoe2.jpg'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      // rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back,color: AppColors.textColor,),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600,color: AppColors.textColor)),
      next: const Icon(Icons.arrow_forward,color: AppColors.textColor,),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600,color: AppColors.textColor)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.white,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        activeColor: AppColors.secondaryColor
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: AppColors.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
