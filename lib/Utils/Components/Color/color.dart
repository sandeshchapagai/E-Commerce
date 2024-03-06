import 'package:flutter/material.dart';

class AppColors {
  // Define color constants
  static const Color primaryColor = Color(0xFFD5D5D5);
  static const Color secondaryColor = Color(0xFFFE9A38);
  static const Color buttonTextColor = Colors.white;
  static const Color SearchTextColor = Color(0xFFF7F7F7);

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
