import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/Utils/Components/Color/color.dart';
import 'package:ecommerce/Utils/Components/Font/font_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/Routes/routes_name.dart';

class CarouselScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: AppColors.primaryGradient,
        ),
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      // mainAxisAlignment: MainAxisAlignment.,
      children: [
        Container(
            child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(
                      100.0), // Adjust the border radius as needed
                  bottomRight: Radius.circular(
                      100.0), // Adjust the border radius as needed
                ),
                child: Container(child: Image.asset("assets/shoe.jpg")))),
        const Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Best Shoe Seller\n In the World",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: FontSizes.large),
              ),
              Text(
                'Quality, variety, convenience, and customer satisfaction. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                textAlign: TextAlign.justify,style: TextStyle(fontSize: FontSizes.medium),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.secondaryColor),
              ),
              onPressed: () {

              },
              child: const Text(
                'Next',
                style: TextStyle(color: AppColors.buttonTextColor),
              )),
        )
      ],
    ));
  }
}

class CarouselScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: AppColors.primaryGradient,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(
                          100.0), // Adjust the border radius as needed
                      bottomRight: Radius.circular(
                          100.0), // Adjust the border radius as needed
                    ),
                    child: Container(child: Image.asset("assets/shoe2.jpg")))),
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enjoy Your Online \nShopping",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: FontSizes.large),
                  ),
                  Text(
                    'Quality, variety, convenience, and customer satisfaction. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: FontSizes.medium),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                width: 350,
                child: GestureDetector(

                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            AppColors.secondaryColor),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesName.home);

                      },
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            color: AppColors.buttonTextColor,
                            fontSize: FontSizes.medium),
                      )),
                ),
              ),
            )
          ],
        ));
  }
}