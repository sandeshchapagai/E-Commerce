import 'package:flutter/material.dart';

import '../../../Utils/Components/Color/color.dart';
import '../../../Utils/Components/Font/font_size.dart';
import '../../../Utils/Routes/routes_name.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  bool _isSelected = false;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
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
        centerTitle: true,
        title: const Text(
          'Favourite',
          style: TextStyle(fontSize: FontSizes.medium),
        ),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView(
                children: [
                  Card(
                    color: _isSelected
                        ? AppColors.primaryColor
                        : AppColors.cardColor,
                    surfaceTintColor: AppColors.cardColor,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _isSelected = !_isSelected;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset('assets/images/sneakers1.png'),
                            ),
                            const SizedBox(width: 10),
                            // Adjust the width between the image and text
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Nike Jordan',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: FontSizes.semiMedium),
                                      ),
                                      Text(
                                        'Mar 21',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontSize: FontSizes.small),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  // Adjust the height between the rows
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$280',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: FontSizes.small),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 25,
                                            width: 25,
                                            decoration: BoxDecoration(
                                              color: AppColors.primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  counter = (counter - 1)
                                                      .clamp(0, 9999);
                                                });
                                              },
                                              icon: Icon(
                                                Icons.remove,
                                                size: 10,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: screenSize.width * 0.01,
                                          ),
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: AppColors.primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '$counter',
                                                style: TextStyle(
                                                    fontSize: FontSizes.small,
                                                    color: Colors.black54),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: screenSize.width * 0.01,
                                          ),
                                          Container(
                                            height: 25,
                                            width: 25,
                                            decoration: BoxDecoration(
                                              color: AppColors.primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(30),
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
                                                  size: 10,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Material(
              surfaceTintColor: AppColors.cardColor,
              color: AppColors.cardColor,
              elevation: 3,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
              child: SizedBox(
                height: screenSize.height * 0.12,
                width: screenSize.width,
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0,right: 25,bottom: 10),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              AppColors.secondaryColor),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, RoutesName.cart);
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.shopping_cart_outlined,
                              color: AppColors.buttonTextColor,
                            ),
                            Text(
                              'Add To Cart',
                              style: TextStyle(
                                  color: AppColors.buttonTextColor,
                                  fontSize: FontSizes.medium),
                            ),
                          ],
                        )),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
