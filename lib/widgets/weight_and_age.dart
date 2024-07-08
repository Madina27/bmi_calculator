import 'package:bmi_calculator/utils/app_colors.dart';
import 'package:bmi_calculator/widgets/remove_add_btn.dart';
import 'package:flutter/material.dart';

class WeightAndAge extends StatelessWidget {
  const WeightAndAge({
    super.key,
    required this.text,
    required this.value,
    required this.remove,
    required this.add,
  });

  final String text;
  final int value;
  final void Function(int) remove;
  final void Function(int) add;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColors.textColor),
        ),
        Text(
          '$value',
          style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w800,
              color: AppColors.whiteColor),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RemoveAddButton(
                icon: Icons.remove, onPressed: () => remove(value - 1)),
            const SizedBox(width: 10),
            RemoveAddButton(icon: Icons.add, onPressed: () => add(value + 1)),
          ],
        ),
      ],
    );
  }
}
