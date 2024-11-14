import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/feature/order/domain/entities/order_result.dart';

class PaymentSummaryScreen extends StatelessWidget {
  const PaymentSummaryScreen({super.key, required this.orderResult});
  final OrderResult orderResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Summary'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.green,
                        child: Icon(
                          Icons.check,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Successful',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      RichText(
                      textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                            text: "Your order ",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          TextSpan(
                            text: "#${orderResult.orderNumber}",
                            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: " has been placed.",
                            style: Theme.of(context).textTheme.labelMedium,
                          )
                        ]),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                       RichText(
                      textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                            text: "We sent an email to ",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          TextSpan(
                            text: orderResult.deliveryAddress.email,
                            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: " with your order confirmation and bill.",
                            style: Theme.of(context).textTheme.labelMedium,
                          )
                        ]),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Time placed: ${getFormattedTime(orderResult.createdAt)}",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Billing',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 12,
              ),
              buildAddressCard(context),
              // SizedBox(
              //   height: 30,
              // ),
              // Text(
              //   'Order',
              //   style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              //         fontWeight: FontWeight.bold,
              //       ),
              // ),
              // SizedBox(
              //   height: 10.h,
              // ),
              // BuildOutlinedButton(
              //   onPressed: () {
              //     context.push("/orders");
              //   },
              //   buttonWidget: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       SvgPicture.asset("assets/icons/delivery.svg"),
              //       SizedBox(
              //         width: 10.w,
              //       ),
              //       Text(
              //         "Arrives by Oct 22nd to Nov 9th",
              //         style: Theme.of(context).textTheme.labelLarge?.copyWith(
              //               color: AppColor.primary,
              //             ),
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 30,
              ),
              BuildButton(
                onPressed: () {
                  context.go('/home');
                },
                buttonWidget: const Text("Back to Shopping"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String getFormattedTime(String dateString) {
    // Parse the input date string to a DateTime object
    final parsedDate = DateTime.parse(dateString);

    // Format the DateTime object to the desired string format with time zone
    final formattedDate = DateFormat('dd/MM/yyyy HH:mm z').format(parsedDate);

    return formattedDate;
  }

  Card buildAddressCard(BuildContext context) {
    final address = orderResult.deliveryAddress;
    final addressLine =
        '''${address.streetAddress}, ${address.townCity}, ${address.state} ${address.zipCode ?? ""}, ${address.countryRegion}''';
    return Card(
      color: Colors.grey.shade100,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              address.addressTitle,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(right: 80),
              child: Text(
                addressLine,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
