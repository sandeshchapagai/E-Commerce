import 'package:ecommerce/Utils/Components/Font/font_size.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
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
          badges.Badge(
            // badgeContent: Text('3'),
            child: Icon(Icons.shopping_cart_outlined),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Column(
        children: [
          CustomAppBar(title: 'My Custom AppBar'),
          Expanded(
            child: Container(
              color: Colors.grey[200], // Placeholder content
              child: Center(
                child: Text('Your content goes here'),
              ),
            ),
          ),
        ],
      ),
    ),
  ));
}
