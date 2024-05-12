
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Utils/Components/Color/color.dart';
import '../../Utils/Components/Font/font_size.dart';

class OnboardingScreen extends StatelessWidget {
  final String imagepath;
  final String title;
  final String subtitle;
  OnboardingScreen({super.key, required this.imagepath, required this.title, required this.subtitle});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: AppColors.backgroundColor
        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(100.0),
                  bottomRight: Radius.circular(100.0),
                ),
                child: Image.asset(imagepath)),
             Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: FontSizes.large,color: AppColors.textColor,decoration: TextDecoration.none
                    ),
                  ),
                  Text(
                    '\n'+subtitle,
                    textAlign: TextAlign.justify,style: TextStyle(fontSize: FontSizes.medium,fontWeight: FontWeight.w300,   color: AppColors.textColor, // Change text color to black
                      decoration: TextDecoration.none),
                  ),
                ],
              ),
            ),

          ],
        ));
  }
}
