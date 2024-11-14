import 'package:flutter/material.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({super.key, required this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: const Color(0xFFE2E1FF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: BuildButton(
        onPressed: onPressed,
        buttonWidget: Text(
          'Apply',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
