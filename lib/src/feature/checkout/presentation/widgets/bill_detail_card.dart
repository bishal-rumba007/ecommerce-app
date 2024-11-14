import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/src/core/utils/currency_util.dart';
import 'package:ecommerce_app/src/feature/checkout/presentation/bloc/check_out_bloc.dart';

class BillDetailCard extends StatefulWidget {
  const BillDetailCard({super.key});

  @override
  State<BillDetailCard> createState() => _BillDetailCardState();
}

class _BillDetailCardState extends State<BillDetailCard> {
  double subTotal = 0;
  double couponDiscount = 0;
  double total = 0;
  double grandTotal = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckOutBloc, CheckOutState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (checkOutModel) {
            subTotal = checkOutModel.totalAmount;
            final currency =
                getCurrency(checkOutModel.checkOutItem.first.countryName);
            total = subTotal - couponDiscount;
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color:
                      Theme.of(context).colorScheme.primary.withOpacity(0.05),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 1),
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.05),
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                    child: Text(
                      "Bill Detail",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                    child: Row(
                      children: [
                        Text(
                          "Subtotal",
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        const Spacer(),
                        Text(
                          "$currency $subTotal",
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                    child: Row(
                      children: [
                        Text(
                          "Coupon Discount",
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        const Spacer(),
                        Text(
                          "$currency $couponDiscount",
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                    child: Row(
                      children: [
                        Text(
                          "Total",
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        const Spacer(),
                        Text(
                          "$currency $total",
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 8),
                   Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
                    child: Row(
                      children: [
                        Text(
                          "Grand Total".toUpperCase(),
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        const Spacer(),
                        Text(
                          "$currency ${checkOutModel.totalAmount}",
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}
