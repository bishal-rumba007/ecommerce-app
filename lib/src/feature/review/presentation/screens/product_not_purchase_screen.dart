import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';

class ProductNotPurchasedScreen extends StatelessWidget {
  const ProductNotPurchasedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100.h),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/outside-comfort-zone.png",
                height: 200.h,
                width: 200.w,
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              "Haven’t purchased this product?",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(height: 5.h),
            Text(
              "Sorry! You are not allowed to review this \nproduct since haven’t bought it on dikazo.",
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: AppColor.greyStrong,
                  ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40.h),
            BuildButton(
              onPressed: () {
                context.go("/");
              },
              buttonWidget: const Text("Continue Shopping"),
            )
          ],
        ),
      ),
    );
  }
}
