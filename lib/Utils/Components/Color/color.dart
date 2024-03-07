import 'package:flutter/material.dart';

class AppColors {
  // Define color constants
  static const Color primaryColor = Color(0xFFD5D5D5);
  static const Color secondaryColor = Color(0xFFFE9A38);
  static const Color buttonTextColor = Colors.white;
  static const Color SearchTextColor = Colors.white;
  static const Color cardColor = Colors.white;
  static const Color backgroundColor = Color(0xFFF5F7F8);
  static const Color greyColor = Colors.grey;

  // Add more colors as needed

  // Define gradient constants
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.center,
    end: Alignment(-1.0, -1.0),
    colors: [
      Color(0xFFD5D5D5), // Your color
      Colors.transparent, // Transparent color, if needed
    ],
  );
// Add more gradients as needed
}
