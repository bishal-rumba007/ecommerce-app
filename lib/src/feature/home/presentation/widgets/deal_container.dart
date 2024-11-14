import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';

class DealContainer extends StatefulWidget {
  const DealContainer({
    super.key,
  });

  @override
  State<DealContainer> createState() => _DealContainerState();
}

class _DealContainerState extends State<DealContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19.5.w),
      padding: EdgeInsets.all(20.w),
      height: 540.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColor.primary,
            const Color(0xFF93C8FA).withOpacity(0),
          ],
          stops: const [0.0, 1.0],
          tileMode: TileMode.decal,
        ),
        border: Border.all(color: Colors.grey.shade200, width: 1.w),
      ),
      child: Column(
        children: [
          Text(
            "Deal of the day",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColor.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            height: 15.h,
          ),
          CountDownContainer(
            endDateString: "2024-05-17 14:04:00",
            titleColor: AppColor.white,
            backGroundColor: [
              const Color(0xFFFFEEEE).withOpacity(0.45),
              const Color(0xFFFFF2F2).withOpacity(0.45),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 18.w,
              mainAxisSpacing: 18.h,
              childAspectRatio: 0.72,
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(left: 5.w, top: 5.h, right: 5.w),
                decoration: BoxDecoration(
                  color: AppColor.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 152.h,
                      width: 136.w,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade50,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Text(
                      "Heading",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "Upto ",
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        TextSpan(
                          text: "25 % Off",
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                      ]),
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
