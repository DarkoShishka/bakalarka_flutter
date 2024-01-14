import 'package:flutter/material.dart';

class AppColors {
  static const Color mainColor = Color(0xFFa6d2d9); // Backgrounds, main elements - 60%
  static const Color secondaryColor = Color(0xFFF4FAFB); // For 2nd level elements, text - 30%
  static const Color accentColor = Color(0xFF89CDAE); // For CTAs and accent touches - 10%
}

class BakalarkaText extends StatelessWidget {
  const BakalarkaText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: AppColors.secondaryColor,
      ),
    );
  }
}
