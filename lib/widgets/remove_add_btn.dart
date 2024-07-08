import 'package:bmi_calculator/utils/app_colors.dart';
import 'package:flutter/material.dart';

class RemoveAddButton extends StatelessWidget {
  const RemoveAddButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(4),
          backgroundColor: AppColors.greyColor,
          foregroundColor: AppColors.pinkColor),
      child: Icon(
        icon,
        color: AppColors.whiteColor,
        size: 45,
      ),
    );
  }
}
