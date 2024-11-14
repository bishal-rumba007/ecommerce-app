import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/widgets/build_button.dart';
import 'package:ecommerce_app/src/core/constants/app_strings.dart';

class SuccessBottomSheet extends StatelessWidget {
  final String successMessage;
  const SuccessBottomSheet({super.key, required this.successMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      height: 417.h,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(42.r),
        ),
      ),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            SvgPicture.asset("assets/images/success.svg"),
            SizedBox(
              height: 30.h,
            ),
            Text(
              AppString.successString,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              successMessage,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            BuildButton(
              onPressed: () {
                context.go('/login');
              },
              buttonWidget: const Text('Go to shopping'),
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
