import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColor.primary,
            borderRadius: BorderRadius.circular(22.r),
          ),
          height: 188.h,
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Your current balance",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                      fontSize: 13.sp,
                    ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                "₹ 9,999.90",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              height: 52.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff8683FF),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(22.r),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    CupertinoIcons.add_circled,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 14.w,
                  ),
                  Text(
                    "Charge Balance",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontSize: 13.sp,
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
