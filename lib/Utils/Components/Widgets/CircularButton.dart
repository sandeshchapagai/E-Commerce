import 'package:ecommerce/Utils/Components/Color/color.dart';
import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Color color;
  final double size;

  const CircularButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    required this.color,
    required this.size ,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(size / 2),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(size / 2),
          child: Center(
            child: Icon(
              icon,
              color: Colors.white,
              size: size * 0.6,
            ),
          ),
        ),
      ),
    );
  }
}

