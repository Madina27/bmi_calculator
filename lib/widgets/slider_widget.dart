import 'package:bmi_calculator/utils/app_colors.dart';
import 'package:bmi_calculator/utils/app_text.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    super.key,
    required this.currentValue,
    this.onChanged,
  });

  final double currentValue;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          AppText.height,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColors.textColor),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '${currentValue.toInt()}',
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                  color: AppColors.whiteColor),
            ),
            const SizedBox(
              width: 4,
            ),
            const Text(
              'cm',
              style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  height: 2.2),
            ),
          ],
        ),
        Slider(
          value: currentValue,
          onChanged: onChanged,
          max: 300,
          activeColor: AppColors.whiteColor,
          thumbColor: AppColors.pinkColor,
          inactiveColor: AppColors.greyColor,
        )
      ],
    );
  }
}
