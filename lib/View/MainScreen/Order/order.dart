import 'package:flutter/material.dart';

import '../../../Utils/Components/Color/color.dart';
import '../../../Utils/Components/Widgets/appbar.dart';
class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
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
    child:ListView(
    physics: NeverScrollableScrollPhysics(),
    // crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Check  Out',
            style: TextStyle(
              color: Colors.black, // Customize the text color
              fontSize:25,
              fontWeight: FontWeight.w900,
            ),

          ),



        ],
      ),
    SizedBox(height: screenSize.width * 0.05),]))));
    }
}
