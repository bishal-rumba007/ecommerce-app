import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ecommerce_app/src/feature/order/domain/entities/order.dart';
import 'package:ecommerce_app/src/feature/order/presentation/widgets/order_item_card.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
    required this.order,
  });

  final ProductOrder order;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "#Order No: ",
                style: theme.textTheme.labelMedium,
              ),
              SelectableText(
                order.orderNumber,
                style: theme.textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Order Date: ",
                  style: theme.textTheme.labelSmall,
                ),
                TextSpan(
                  text: getCreatedDate(order.createdAt),
                  style: theme.textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Payment: ",
                  style: theme.textTheme.labelSmall,
                ),
                TextSpan(
                  text: order.paymentMethod == "cod"
                      ? "Cash on Delivery"
                      : "Paid",
                  style: theme.textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: order.paymentMethod == "cod"
                        ? Colors.red
                        : Colors.green,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          buildOrderStatus(order.orderStatus, theme),
          const SizedBox(
            height: 10,
          ),
          ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: order.orderItems.length,
            itemBuilder: (context, index) {
              return OrderItemCard(
                orderItem: order.orderItems[index],
                status: order.orderStatus,
              );
            },
            separatorBuilder: (_, __) => const SizedBox(
              height: 10,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Divider(
            color: Colors.black45,
          ),
          const SizedBox(
            height: 6,
          ),
          Text("Total: ${order.totalAmount}"),
        ],
      ),
    );
  }

  String getCreatedDate(String createdAt) {
    final date = DateTime.parse(createdAt);
    final formatter = DateFormat('d MMMM yyyy h:mm a');
    return formatter.format(date);
  }

  Widget buildOrderStatus(String orderStatus, ThemeData theme) {
    Color statusColor = Colors.orange;
    String statusText = "Pending";
    if (orderStatus == "pending") {
      statusColor = Colors.orange;
      statusText = "Pending";
    } else if (orderStatus == "processing") {
      statusColor = Colors.blue;
      statusText = "Processing";
    } else if (orderStatus == "accept") {
      statusColor = Colors.green;
      statusText = "Completed";
    } else if (orderStatus == "cancelled") {
      statusColor = Colors.red;
      statusText = "Cancelled";
    } else {}
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      decoration: BoxDecoration(
        color: statusColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        statusText,
        style: theme.textTheme.labelSmall?.copyWith(
          color: theme.colorScheme.onPrimary,
        ),
      ),
    );
  }
}
