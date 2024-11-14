import 'package:flutter/material.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';

class BuildStepper extends StatelessWidget {
  const BuildStepper({super.key, required this.steps});

  final List<Map<String, dynamic>> steps;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      type: StepperType.vertical,
      controlsBuilder: (context, details) {
        return Container();
      },
      connectorColor:
          WidgetStateProperty.resolveWith((states) => AppColor.cyanGreen),
      steps: steps.map((step) {
        return Step(
          title: Text(step["title"],
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                  )),
          subtitle: Text(
            step["subtitle"],
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.surfaceContainerHighest),
          ),
          content: const SizedBox(),
        );
      }).toList(),
      margin: EdgeInsets.zero,
      connectorThickness: 1.5,
      stepIconBuilder: (stepIndex, stepState) {
        return Container(
          decoration: const BoxDecoration(
            color: AppColor.cyanGreen,
            shape: BoxShape.circle,
          ),
        );
      },
    );
  }
}
