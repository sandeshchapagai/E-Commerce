import 'package:ecommerce/Utils/Components/Font/font_size.dart';
import 'package:ecommerce/Utils/Components/Widgets/appbar.dart';
import 'package:ecommerce/View/MainScreen/Home/Categories/athletic_shoes.dart';
import 'package:ecommerce/View/MainScreen/Home/Categories/boots.dart';
import 'package:ecommerce/View/MainScreen/Home/Categories/casual_shoes.dart';
import 'package:ecommerce/View/MainScreen/Home/Categories/formal_shoes.dart';
import 'package:ecommerce/View/MainScreen/Home/Categories/sandals.dart';
import 'package:ecommerce/View/MainScreen/Home/Categories/snekars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import '../../../Utils/Components/Color/color.dart';


class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(color:AppColors.backgroundColor
          // gradient: AppColors.primaryGradient,
          ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(title: 'Shoe Space'),
              SizedBox(height: screenSize.width * 0.05),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: screenSize.height * 0.07,
                      child: Card(
                        elevation: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            // Use a default color for the Card
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TextField(
                            style: const TextStyle(color: Colors.grey),
                            decoration: InputDecoration(
                              hintText: 'Search...',
                              hintStyle: const TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: AppColors.SearchTextColor,
                              // Use transparent color
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * 0.03,
                  ),
                  Container(
                      width: screenSize.width * 0.15,
                      height: screenSize.height * 0.065,
                      decoration: BoxDecoration(
                        color: AppColors.SearchTextColor,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: const Icon(
                        Icons.sort,
                        color: Colors.grey,
                      )),
                ],
              ),
              SizedBox(height: screenSize.width * 0.05),
              const Text(
                'Categories',
                style: TextStyle(
                    fontSize: FontSizes.semiMedium, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: screenSize.width * 0.03),
              Expanded(
                child: DefaultTabController(
                  length: 6,
                  child: Column(
                    children: <Widget>[
                      ButtonsTabBar(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                        buttonMargin: const EdgeInsets.symmetric(horizontal: 14),
                        unselectedDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.SearchTextColor),
                        decoration: BoxDecoration(
                            color: AppColors.secondaryColor,
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 2,
                        unselectedLabelStyle: const TextStyle(color: Colors.black),
                        labelStyle: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        tabs: const [
                          Tab(
                            text: "Snekars",
                          ),
                          Tab(
                            text: "Boots",
                          ),
                          Tab(
                            text: "Sandals",
                          ),
                          Tab(
                            text: "Formal Shoes",
                          ),
                          Tab(
                            text: "Casual Shoes",
                          ),
                          Tab(
                            text: "Athletic Shoes",
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          height: screenSize.height*0.56,
                          child: const TabBarView(
                            children: <Widget>[
                              Snekars(),
                              Boots(),
                              Sandals(),
                             Formal(),
                             Casual(),
                              Athletic()
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
