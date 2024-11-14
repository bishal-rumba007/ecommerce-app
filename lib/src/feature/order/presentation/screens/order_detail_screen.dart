import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/feature/order/presentation/widgets/build_stepper.dart';
import 'package:ecommerce_app/src/feature/order/presentation/widgets/order_detail_card.dart';

class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({super.key});

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  final List<Map<String, dynamic>> steps = [
    {
      "title": "Order Confirmed",
      "subtitle": "Wed, 23rd Sep 22",
    },
    {
      "title": "Delivered",
      "subtitle": "Your Item has been delivered",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              const OrderDetailCard(),
              SizedBox(
                height: 15.h,
              ),
              Card(
                color: Theme.of(context).cardColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Buy it again",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 18,
                            color: Theme.of(context).colorScheme.surfaceContainerHighest,
                          )
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
                      BuildStepper(steps: steps),
                      SizedBox(
                        height: 5.h,
                      ),
                      BuildButton(
                        onPressed: () {},
                        buttonStyle:
                            ElevatedButton.styleFrom(padding: EdgeInsets.zero),
                        buttonWidget: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/icons/download.svg"),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "Download Invoice",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                    color: AppColor.white,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Payment Information",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Payment Method",
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                          Text(
                            "Bhim Up".toUpperCase(),
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      fontWeight: FontWeight.w600,
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
                      Text(
                        "Billing Address",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w500,
                            color:
                                Theme.of(context).colorScheme.surfaceContainerHighest),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "6-5-22, Plot no.east part\nSelf Finance Colony, Vanasthalipuram\n--\n500070",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w500,
                            color:
                                Theme.of(context).colorScheme.surfaceContainerHighest),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Shipping Detail",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: double.infinity,
                      ),
                      Text(
                        "6-5-22, Plot no.east part\nSelf Finance Colony, Vanasthalipuram\n--\n500070",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w500,
                            color:
                                Theme.of(context).colorScheme.surfaceContainerHighest),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Summary",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Item",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceContainerHighest),
                          ),
                          Text(
                            "₹ 900",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceContainerHighest),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tax",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceContainerHighest),
                          ),
                          Text(
                            "₹ 200",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceContainerHighest),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Shipping",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceContainerHighest),
                          ),
                          Text(
                            "₹ 50",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceContainerHighest),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceContainerHighest),
                          ),
                          Text(
                            "₹ 1150",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceContainerHighest),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Order Total",
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Text(
                            "₹ 1150",
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 200.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
