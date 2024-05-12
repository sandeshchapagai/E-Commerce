import 'package:ecommerce/Utils/Components/Color/color.dart';
import 'package:ecommerce/Utils/Routes/routes_name.dart';

import 'package:ecommerce/View/StartUp_Screeen/startScreen.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

import '../MainScreen/Home/home.dart';
import 'constants.dart';
final onboardingPagesList = [
  SizedBox(
    height: double.infinity,
    child: OnboardingScreen(imagepath: 'assets/shoe2.jpg', title: 'Best Shoe Seller\nIn the World', subtitle: 'Quality, variety, convenience, and customer satisfaction. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',),
  ),
SizedBox(
  height: double.infinity,
  child: OnboardingScreen(imagepath: 'assets/shoe.jpg', title: 'Enjoy Your Online \nShopping', subtitle: 'Quality, variety, convenience, and customer satisfaction. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',),
),
  SizedBox(
    height: double.infinity,
    child: OnboardingScreen(imagepath: 'assets/shoe5.jpg', title: 'Best Shoe Seller\nIn the World', subtitle: 'Quality, variety, convenience, and customer satisfaction. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',),
  )
];


class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late int index;
  final activePainter = Paint();
  final inactivePainter = Paint();

  static const width = 100.0;

  SizedBox _skipButton({void Function(int)? setIndex}) {
    return SizedBox(
      width: width,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Material(
          borderRadius: defaultSkipButtonBorderRadius,
          color: AppColors.secondaryColor,
          child: InkWell(
            borderRadius: defaultSkipButtonBorderRadius,
            onTap: () {
              if (setIndex != null) {
                index = 2;
                setIndex(2);
              }
            },
            child: const Padding(
              padding: defaultSkipButtonPadding,
              child: Text(
                'Skip',
                style: defaultSkipButtonTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox get _signupButton {
    return SizedBox(
      width: width,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Material(
          borderRadius: defaultProceedButtonBorderRadius,
          color: defaultProceedButtonColor,
          child: InkWell(
            borderRadius: defaultProceedButtonBorderRadius,
            onTap: () {
              Navigator.pushReplacementNamed(
                context,RoutesName.home
              );
            },
            child: const Padding(
              padding: defaultProceedButtonPadding,
              child: Text(
                'Get started',
                style: defaultProceedButtonTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    index = 0;
    activePainter.color = AppColors.secondaryColor;
    activePainter.strokeWidth = 1;
    activePainter.strokeCap = StrokeCap.round;
    activePainter.style = PaintingStyle.fill;

    inactivePainter.color = pageImageColor;
    inactivePainter.strokeWidth = 1;
    inactivePainter.strokeCap = StrokeCap.round;
    inactivePainter.style = PaintingStyle.stroke;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding FooterIndicator 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Onboarding(
          swipeableBody: onboardingPagesList,
          startIndex: 0,
          onPageChanges: (_, __, currentIndex, sd) {
            index = currentIndex;
          },
          buildFooter:
              (context, dragDistance, pagesLength, currentIndex, setIndex, sd) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                border: Border.all(
                  width: 0.0,
                  color: AppColors.backgroundColor,
                ),
              ),
              child: ColoredBox(
                color: AppColors.backgroundColor,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 45.0),
                          child: Indicator<CirclePainter>(
                            painter: CirclePainter(
                              currentPageIndex: currentIndex,
                              pagesLength: pagesLength,
                              netDragPercent: dragDistance,
                              activePainter: activePainter,
                              inactivePainter: inactivePainter,
                              slideDirection: sd,
                              radius: 5.0,
                              space: 10.0,
                              showAllActiveIndicators: false,
                            ),
                          ),
                        ),
                        index != pagesLength - 1
                            ? _skipButton(setIndex: setIndex)
                            : _signupButton,
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
