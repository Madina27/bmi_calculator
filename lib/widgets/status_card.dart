import 'package:bmi_calculator/utils/app_colors.dart';
import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        margin: const EdgeInsets.all(16),
        color: AppColors.cardColor,
        child: widget,
      ),
    );
  }
}

