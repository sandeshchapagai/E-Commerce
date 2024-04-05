import 'package:flutter/material.dart';

import '../../../Utils/Components/Color/color.dart';
class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color:AppColors.backgroundColor
        // gradient: AppColors.primaryGradient,
    ),
    child: SafeArea(child: Container(

    )));
  }
}
