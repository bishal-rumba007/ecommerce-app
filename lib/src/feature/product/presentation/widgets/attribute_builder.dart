import 'package:flutter/material.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product_stock.dart';
import 'package:ecommerce_app/src/feature/product/presentation/widgets/attribute_chip.dart';

class AttributeBuilder extends StatelessWidget {
  const AttributeBuilder({super.key, required this.productStocks});
  final List<ProductStock> productStocks;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Attributes',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 0,
            children: productStocks
                .map(
                  (productStock) => AttributeChip(productStock: productStock),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
