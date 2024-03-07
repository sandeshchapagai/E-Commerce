import 'package:ecommerce/Utils/Components/Color/color.dart';
import 'package:ecommerce/Utils/Components/Font/font_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/widgets.dart';
import 'package:rate_in_stars/rate_in_stars.dart';

import '../../../Utils/Components/Widgets/color_picker.dart';

class AddCart extends StatefulWidget {
  const AddCart({super.key});

  @override
  State<AddCart> createState() => _AddCartState();
}

class _AddCartState extends State<AddCart> {
  int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 16,
            ),
            // Change this to the desired icon
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: AppColors.backgroundColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Nike Jordan',
                style: TextStyle(fontSize: FontSizes.medium),
              ),
              badges.Badge(
                // badgeContent: Text('3'),
                child: Icon(Icons.shopping_cart_outlined),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset('assets/images/sneakers1.png'),
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
              child: Container(
                height: screenSize.height * 0.527,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nike Jordan',
                        style: TextStyle(fontSize: FontSizes.large),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                RatingStars(
                                    editable: true,
                                    rating: 4,
                                    color: Colors.amber,
                                    iconSize: 16),
                                Text(
                                  '\t\t\t\t\t\t125 Reviews',
                                  style: TextStyle(
                                      color: AppColors.greyColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: FontSizes.small),
                                )
                              ],
                            ),
                            Text(
                              '\$280',
                              style: TextStyle(
                                  fontSize: FontSizes.medium,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'sneakers are versatile timeless sporty shoes, which basically most of us at least have a pair or two. This easy to combine casual style shoes, can be found as in classic style, platform, dressy sneakers, etc.',
                        style: TextStyle(fontSize: FontSizes.medium),
                        textAlign: TextAlign.justify,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Colors',
                            style: TextStyle(
                                fontSize: FontSizes.medium,
                                color: AppColors.greyColor),
                          ),
                          HorizontalColorPicker(
                            colors: [Colors.red, Colors.green, Colors.blue],
                            onColorChanged: (Color color) {
                              // Handle color change
                              print('Selected color: $color');
                            },
                          )


                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Quantity',
                              style: TextStyle(
                                  fontSize: FontSizes.medium,
                                  color: AppColors.greyColor),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        counter = (counter - 1).clamp(0, 9999);
                                      });
                                    },
                                    icon: Icon(
                                      Icons.remove,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: screenSize.width * 0.03,
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '$counter',
                                      style: TextStyle(
                                          fontSize: FontSizes.medium,
                                          color: Colors.black54),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: screenSize.width * 0.03,
                                ),
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Center(
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          counter = counter + 1;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.add,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        AppColors.secondaryColor),
                              ),
                              onPressed: () {
                                // Navigator.pushNamed(context, RoutesName.home);
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                  ),
                                ],
                              )),
                          Container(
                            width: 260,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          AppColors.secondaryColor),
                                ),
                                onPressed: () {
                                  // Navigator.pushNamed(context, RoutesName.home);
                                },
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Add To My Cart',
                                      style: TextStyle(
                                          color: AppColors.buttonTextColor,
                                          fontSize: FontSizes.medium),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
