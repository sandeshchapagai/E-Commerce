import 'package:flutter/material.dart';

import '../../../Utils/Components/Color/color.dart';
import '../../../Utils/Components/Font/font_size.dart';
class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
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
          'Cart',
          style: TextStyle(fontSize: FontSizes.medium),
        ),
      ),

      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: ListView(
          children: [
        Card(
        child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Image.asset('assets/images/sneakers1.png'),
            ),
            const SizedBox(width: 10), // Adjust the width between the image and text
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nike Jordan',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: FontSizes.semiMedium),
                      ),
                      Text(
                        'Mar 21',
                        style: TextStyle(fontStyle: FontStyle.italic,fontSize: FontSizes.small),
                      ),
                    ],
                  ),
                  SizedBox(height: 5), // Adjust the height between the rows
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$280',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: FontSizes.small),
                      ),
                      Text(
                        'data',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    )



    ],
        ),
      ),
    );
  }
}
