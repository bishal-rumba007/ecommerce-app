import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';

class RatingBadge extends StatelessWidget {
  const RatingBadge({
    super.key,
    required this.rating,
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.w,
      ),
      height: 14.h,
      width: 35.w,
      decoration: BoxDecoration(
        color: AppColor.cyanGreen,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.star_rounded,
            color: Colors.white,
            size: 10,
          ),
          SizedBox(
            width: 2.w,
          ),
          Text(
            "4.4",
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontSize: 7.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColor.white,
                ),
          ),
        ],
      ),
    );
  }
}
