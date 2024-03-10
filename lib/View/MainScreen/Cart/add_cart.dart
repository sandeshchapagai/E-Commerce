import 'package:ecommerce/Utils/Components/Color/color.dart';
import 'package:ecommerce/Utils/Components/Font/font_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/widgets.dart';
import 'package:rate_in_stars/rate_in_stars.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../Utils/Components/Widgets/color_picker.dart';
import '../../../Utils/Routes/routes_name.dart';

class AddCart extends StatefulWidget {
  const AddCart({super.key});

  @override
  State<AddCart> createState() => _AddCartState();
}

class _AddCartState extends State<AddCart> {
  bool isFavorite = false;
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
                position: badges.BadgePosition.topStart(top: -6, start: 17),
                badgeStyle:
                    badges.BadgeStyle(badgeColor: AppColors.secondaryColor),
                // badgeContent: Text('3'),
                child: Icon(Icons.shopping_cart_outlined),
              )
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 15, left: 25, right: 25, bottom: 15),
              child:
                  Expanded(child: Image.asset('assets/images/sneakers1.png')),
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
                      Row(
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
                      Text(
                        'sneakers are versatile timeless sporty shoes, which basically most of us at least have a pair or two. This easy to combine casual style shoes, can be found as in classic style, platform, dressy sneakers, etc.',
                        style: TextStyle(fontSize: FontSizes.semiSmall),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Size',
                            style: TextStyle(
                                fontSize: FontSizes.medium,
                                color: AppColors.greyColor),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                  child: Text(
                                    '8',
                                    style: TextStyle(
                                        fontSize: FontSizes.small,
                                        color: Colors.black54),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenSize.width * 0.03,
                              ),
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                  child: Text(
                                    '8',
                                    style: TextStyle(
                                        fontSize: FontSizes.small,
                                        color: Colors.black54),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenSize.width * 0.03,
                              ),
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                  child: Text(
                                    '8',
                                    style: TextStyle(
                                        fontSize: FontSizes.small,
                                        color: Colors.black54),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
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
                                height: 30,
                                width: 30,
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
                                    size: 15,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenSize.width * 0.03,
                              ),
                              Container(
                                height: 38,
                                width: 38,
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
                                height: 30,
                                width: 30,
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
                                      size: 15,
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ],
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
                                setState(() {
                                  isFavorite = !isFavorite;
                                });
                                Fluttertoast.showToast(
                                    msg: isFavorite ? "Added to Favourite":"Removed from Favourite",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM_LEFT,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: AppColors.secondaryColor,
                                    textColor: AppColors.buttonTextColor,
                                    fontSize:FontSizes.medium,
                                );
                              },
                              child: Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color:
                                    isFavorite ? Colors.red : Colors.white,
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
                                  Navigator.pushNamed(context, RoutesName.cart);
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
