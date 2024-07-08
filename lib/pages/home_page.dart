import 'dart:math';
import 'package:bmi_calculator/widgets/alert_dialog.dart';
import 'package:bmi_calculator/widgets/slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/utils/app_colors.dart';
import 'package:bmi_calculator/utils/app_text.dart';
import 'package:bmi_calculator/widgets/calculate_btn.dart';
import 'package:bmi_calculator/widgets/gender_widget.dart';
import 'package:bmi_calculator/widgets/status_card.dart';
import 'package:bmi_calculator/widgets/weight_and_age.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 180;
  int weight = 60;
  int age = 0;
  bool isFemale = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: const Text(
          AppText.appbar,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: AppColors.whiteColor,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                StatusCard(
                    widget: GestureDetector(
                  onTap: () {
                    setState(() {
                      isFemale = false;
                    });
                  },
                  child: GenderWidget(
                    icon: Icons.male,
                    text: AppText.male,
                    isFemale: !isFemale,
                  ),
                )),
                StatusCard(
                    widget: GestureDetector(
                  onTap: () {
                    setState(() {
                      isFemale = true;
                    });
                  },
                  child: GenderWidget(
                    icon: Icons.female,
                    text: AppText.female,
                    isFemale: isFemale,
                  ),
                ))
              ],
            ),
          ),
          StatusCard(
            widget: SliderWidget(
              currentValue: height,
              onChanged: (value) {
                setState(() {
                  height = value;
                });
              },
            ),
          ),
          Expanded(
            child: Row(
              children: [
                StatusCard(
                    widget: WeightAndAge(
                  text: AppText.weight,
                  value: weight,
                  remove: (value) {
                    setState(() {
                      weight = value;
                    });
                  },
                  add: (maani) {
                    setState(() {
                      weight = maani;
                    });
                  },
                )),
                StatusCard(
                  widget: WeightAndAge(
                    text: AppText.age,
                    value: age,
                    remove: (value) {
                      setState(() {
                        age = value;
                      });
                    },
                    add: (maani) {
                      setState(() {
                        age = maani;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CalculateBtn(
        onTap: () {
          final result = weight / pow(height / 100, 2);
          if (result < 18.5) {
            alertDialog(
              context: context,
              result: result,
              text: 'Underweight',
              title: AppText.underWeight,
              color: Colors.red,
            );
          } else if (result >= 18.5 && result <= 24.9) {
            alertDialog(
              context: context,
              text: 'Healthy weight',
              result: result,
              title: AppText.healthyWeight,
              color: const Color(0xff08E82C),
            );
          } else if (result >= 25 && result <= 29.9) {
            alertDialog(
              context: context,
              text: 'Overweight',
              result: result,
              title: AppText.overWeight,
              color: Colors.orange,
            );
          } else if (result >= 30 && result <= 34.9) {
            alertDialog(
                context: context,
                text: 'Obese',
                result: result,
                title: AppText.obese,
                color: Colors.orange.shade900);
          } else if (result > 35) {
            alertDialog(
                context: context,
                text: 'Extremely Obese',
                result: result,
                title: AppText.extremelyObese,
                color: Colors.red);
          } else {
            alertDialog(
                context: context,
                text: 'Error',
                result: 0,
                title: 'There may be an error in the application',
                color: AppColors.whiteColor);
          }
        },
      ),
    );
  }
}
