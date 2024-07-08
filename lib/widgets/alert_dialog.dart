import 'package:flutter/material.dart';
import 'package:bmi_calculator/utils/app_colors.dart';

Future<void> alertDialog({
  required BuildContext context,
  required String text,
  required double result,
  required String title,
  required Color color,
}) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.cardColor,
        title: const Text(
          'Result',
          textAlign: TextAlign.center,
          style: TextStyle(color: AppColors.whiteColor),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              textAlign: TextAlign.center,
              text,
              style: TextStyle(
                  color: color, fontSize: 24, fontWeight: FontWeight.w500),
            ),
            Text(
              result.toInt().toString(),
              style: const TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.w500,
                  color: AppColors.whiteColor),
            ),
            Text(title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500))
          ],
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: AppColors.pinkColor,
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text(
              "Сount again",
              style: TextStyle(color: AppColors.whiteColor),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
