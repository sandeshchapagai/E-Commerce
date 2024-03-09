import 'package:ecommerce/Utils/Components/Color/color.dart';
import 'package:ecommerce/Utils/Components/Font/font_size.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

import '../../Routes/routes_name.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.height = kToolbarHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black, // Customize the text color
              fontSize:25,
              fontWeight: FontWeight.w900,
            ),

          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, RoutesName.cart);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: badges.Badge(
                position: badges.BadgePosition.topStart(top: -6, start: 17),
                badgeStyle: const badges.BadgeStyle(
                  badgeColor: AppColors.secondaryColor
                ),
                child: const Icon(Icons.shopping_cart_outlined),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

