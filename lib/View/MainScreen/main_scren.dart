import 'package:ecommerce/View/MainScreen/Favorite/favorite.dart';
import 'package:ecommerce/View/MainScreen/Order/order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionBadgeWidget.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';
import '../../Utils/Components/Color/color.dart';
import 'Home/home.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  // TabController? _tabController;
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();
    //// Use normal tab controller
    // _tabController = TabController(
    //   initialIndex: 1,
    //   length: 4,
    //   vsync: this,
    // );

    //// use "MotionTabBarController" to replace with "TabController", if you need to programmatically change the tab
    _motionTabBarController = MotionTabBarController(
      initialIndex: 0,
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _motionTabBarController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: MotionTabBar(
        controller: _motionTabBarController, // Add this controller if you need to change your tab programmatically
        initialSelectedTab: "Home",
        useSafeArea: false,
        labels: const ["Home", "Favorite", "Order", "Settings"],
        icons: const [Icons.home_outlined, Icons.favorite_border, Icons.shopping_bag_outlined, Icons.settings_outlined],
        tabSize: 50,
        tabBarHeight: 60,
        textStyle: const TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: AppColors.primaryColor,
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: AppColors.secondaryColor,
        tabIconSelectedColor: Colors.white,
        tabBarColor: Colors.white70,
        onTabItemSelected: (int value) {
          setState(() {
            _motionTabBarController!.index = value;
          });
        },
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _motionTabBarController,
        children: const <Widget>[
          HomeScreen(),
          Favorite(),
          Order(),
          HomeScreen(),
        ],
      ),
    );
  }
}

