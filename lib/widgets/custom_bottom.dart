import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback pressed;
  const CustomButton({
    required this.pressed,
    required this.text,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0, bottom: 10.0),
      width: double.maxFinite,
      height: 50.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: pressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
