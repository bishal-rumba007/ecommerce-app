import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';

class OrderDetailCard extends StatelessWidget {
  const OrderDetailCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Order ID - FDS63982201515610",
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Divider(
              color: Theme.of(context).colorScheme.inverseSurface,
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                Container(
                  height: 90.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.inverseSurface,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "LIPSY LONDON",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .surfaceContainerHighest,
                                      ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "Lorem ipsum dolor sit amet, con orem",
                                  style: Theme.of(context).textTheme.labelLarge,
                                  maxLines: 1,
                                  overflow: TextOverflow.fade,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Color",
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          CircleAvatar(
                            radius: 8.r,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "|",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  color: AppColor.greyMedium,
                                ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "Size",
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "XL",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "Quantity",
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "2",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Sold by: polychromatic",
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "₹ 9,999  ",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.primary,
                                ),
                          ),
                          TextSpan(
                            text: "₹ 1,200",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  color: AppColor.greyMedium,
                                  fontSize: 10.sp,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: AppColor.greyMedium,
                                ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Divider(
              color: Theme.of(context).colorScheme.inverseSurface,
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RatingBar.builder(
                  initialRating: 0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: AppColor.brandYellow,
                  ),
                  onRatingUpdate: (rating) {},
                  itemSize: 24,
                  itemPadding: EdgeInsets.only(right: 4.w),
                ),
                SizedBox(
                  height: 36.h,
                  width: 110.w,
                  child: BuildOutlinedButton(
                    onPressed: () {
                      context.push("/review");
                    },
                    buttonStyle: OutlinedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      side: const BorderSide(
                        width: 2,
                        color: AppColor.primary,
                      ),
                      textStyle: Theme.of(context).textTheme.labelLarge,
                    ),
                    buttonWidget: const Text("Add a review"),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
