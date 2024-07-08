import 'package:bmi_calculator/utils/app_colors.dart';
import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.isFemale,
  });

  final IconData icon;
  final String text;
  final bool isFemale;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 90,
          color: isFemale ? AppColors.whiteColor : AppColors.greyColor,
        ),
        Text(
          text,
          style: TextStyle(
              color: isFemale ? AppColors.whiteColor : AppColors.greyColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
