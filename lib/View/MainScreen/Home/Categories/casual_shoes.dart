import 'package:ecommerce/Utils/Components/Color/color.dart';
import 'package:ecommerce/Utils/Components/Font/font_size.dart';
import 'package:ecommerce/Utils/Components/Widgets/CircularButton.dart';
import 'package:flutter/material.dart';
class Casual extends StatefulWidget {
  const Casual({super.key});

  @override
  State<Casual> createState() => _CasualState();
}

class _CasualState extends State<Casual> {
  final List<String> shoeImages = [
    'sneakers1.png',
    'sneakers2.png',
    'sneakers3.png',
    'sneakers4.png',
    'sneakers5.png',
    'sneakers1.png',
    'sneakers2.png',
    'sneakers3.png',
    'sneakers4.png',
    'sneakers5.png',
    'sneakers1.png',
    'sneakers2.png',
    'sneakers3.png',
    'sneakers4.png',
    'sneakers5.png',

    // Add more image paths here
  ];
  final List<String> shoeNames = [
    'sneakers1.png',
    'sneakers2.png',
    'sneakers3.png',
    'sneakers4.png',
    'sneakers5.png',
    'sneakers1.png',
    'sneakers2.png',
    'sneakers3.png',
    'sneakers4.png',
    'sneakers5.png',
    'sneakers1.png',
    'sneakers2.png',
    'sneakers3.png',
    'sneakers4.png',
    'sneakers5.png',
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: GridView.count(
          crossAxisCount: 2,

          childAspectRatio: 0.8,
          children: List.generate(
            shoeImages.length,
                (index) => Container(
              // Set the desired height here
              child: Card(
                color: AppColors.cardColor,
                surfaceTintColor: AppColors.cardColor,
                elevation: 1, // Add elevation for a shadow effect
                margin: EdgeInsets.all(8), // Adjust margin as needed
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(12)
                      ),
                      width: double.infinity,
                      height: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),

                        child: Image.asset(
                          'assets/images/${shoeImages[index]}', // Assuming images are stored in the assets folder
                          fit: BoxFit.fitWidth, // Adjust image fitting as needed
                        ),
                      ),
                    ),
                    SizedBox(height:screenSize.height*0.005),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                '${shoeNames[index]}',
                                style: TextStyle(fontSize: FontSizes.small, fontWeight: FontWeight.bold),

                              ),
                              Text(
                                '\$300',style: TextStyle(fontSize: FontSizes.small, fontWeight: FontWeight.bold),
                              )

                            ],
                          ),
                          CircularButton(icon: Icons.add, onPressed: (){}, color: AppColors.secondaryColor, size: 30,)

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
