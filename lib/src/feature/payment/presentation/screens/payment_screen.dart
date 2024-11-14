import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Payment Method'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Cards",
              style: Theme.of(context).textTheme.labelLarge,
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Theme.of(context).colorScheme.inverseSurface,
                ),
                SizedBox(
                  width: 12.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Card Name",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontSize: 15.sp,
                            ),
                      ),
                      Text(
                        "No. XXXXXXXXXXXXX",
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              fontSize: 11.sp,
                            ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    context.push("/add-payment-card");
                  },
                  child: const CircleAvatar(
                    radius: 24,
                    child: Icon(Icons.add),
                  ),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Text(
                  "Add a Debit/Credit/ATM Card",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              "UPI",
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Theme.of(context).colorScheme.inverseSurface,
                ),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  "UPI",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        "Select App",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Theme.of(context).colorScheme.onSurface,
                        size: 20.sp,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              "Net Banking",
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Theme.of(context).colorScheme.inverseSurface,
                ),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  "Net Banking",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Pay Now",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        color: Theme.of(context).colorScheme.surface,
        child: BuildButton(
          onPressed: () {
            context.push("/payment-summary");
          },
          buttonWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Continue to Payment"),
              SizedBox(
                width: 10.w,
              ),
              const Icon(Icons.arrow_forward)
            ],
          ),
        ),
      ),
    );
  }
}
