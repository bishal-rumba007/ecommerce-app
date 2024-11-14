import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/feature/wallet/presentation/widgets/wallet_card.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Wallet'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                const WalletCard(),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Wallet history",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                const WalletHistoryCard(
                  title: "Purchase",
                  amount: -9999.00,
                  dateString: "Jun 12, 2022",
                ),
                SizedBox(
                  height: 20.h,
                ),
                const WalletHistoryCard(
                  title: "Return",
                  amount: 9999.00,
                  dateString: "Jun 12, 2022",
                ),
                SizedBox(
                  height: 20.h,
                ),
                const WalletHistoryCard(
                  title: "Purchase",
                  amount: 9999.00,
                  dateString: "Jun 12, 2022",
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ));
  }
}

class WalletHistoryCard extends StatelessWidget {
  const WalletHistoryCard({
    super.key,
    required this.title,
    required this.amount,
    required this.dateString,
  });
  final String title;
  final double amount;
  final String dateString;

  @override
  Widget build(BuildContext context) {
    String formattedAmount = NumberFormat("#,##0.00", "en_US").format(amount);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.location_on_outlined,
                    size: 24,
                    color: Theme.of(context).colorScheme.surfaceContainerHighest),
                SizedBox(
                  width: 16.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Text(
                        dateString,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  amount > 0 ? "+₹$formattedAmount" : "-₹$formattedAmount",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: amount > 0 ? AppColor.cyanGreen : AppColor.red,
                      ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Divider(
              color: Theme.of(context).colorScheme.inverseSurface,
            ),
            SizedBox(height: 20.h),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) => const PurchasedItemCard(),
              separatorBuilder: (_, __) => SizedBox(height: 12.h),
            ),
          ],
        ),
      ),
    );
  }
}

class PurchasedItemCard extends StatelessWidget {
  const PurchasedItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.greyLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(9.w),
        child: Row(
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
                      CircleAvatar(
                        radius: 8.r,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        "Color",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        "|",
                        style:
                            Theme.of(context).textTheme.labelMedium?.copyWith(
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
                        style:
                            Theme.of(context).textTheme.labelMedium?.copyWith(
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
                        "1",
                        style:
                            Theme.of(context).textTheme.labelMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "₹ 9,999  ",
                        style:
                            Theme.of(context).textTheme.labelMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.sp,
                                  color: AppColor.primary,
                                ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
