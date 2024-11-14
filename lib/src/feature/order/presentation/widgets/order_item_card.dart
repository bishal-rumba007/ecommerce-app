import 'package:flutter/material.dart';
import 'package:ecommerce_app/src/core/utils/cache_image.dart';
import 'package:ecommerce_app/src/feature/order/domain/entities/order_item.dart';

class OrderItemCard extends StatelessWidget {
  const OrderItemCard({super.key, required this.orderItem, required this.status});
  final OrderItem orderItem;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: ListTile(
        dense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 6),
        minLeadingWidth: 0,
        leading: AspectRatio(
          aspectRatio: 16 / 12,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: CacheImageExtension(imageUrl: orderItem.imageUrl),
          ),
        ),
        title: Text(
          "${orderItem.qunatity} x ${orderItem.price}",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        subtitle: Text(
          "Status: $status",
          style: Theme.of(context).textTheme.labelMedium,
        ), 
      ),
    );
  }
}
