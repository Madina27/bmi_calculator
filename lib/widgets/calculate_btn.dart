import 'package:bmi_calculator/utils/app_colors.dart';
import 'package:bmi_calculator/utils/app_text.dart';
import 'package:flutter/material.dart';

class CalculateBtn extends StatelessWidget {
  const CalculateBtn({
    super.key,
    required this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 73,
        color: AppColors.pinkColor,
        child: const Center(
          child: Text(
            AppText.calculator,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: AppColors.whiteColor),
          ),
        ),
      ),
    );
  }
}
