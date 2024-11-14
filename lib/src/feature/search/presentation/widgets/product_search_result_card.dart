import 'package:flutter/material.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/core/utils/cache_image.dart';
import 'package:ecommerce_app/src/core/utils/utils_export.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product.dart';

class ProductSearchResultCard extends StatelessWidget {
  const ProductSearchResultCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: CacheImageExtension(imageUrl: product.productImage)),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.productName,
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                Text(
                  product.categoryName,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: AppColor.greyMedium,
                  ),
                ),
                const SizedBox(height: 5),
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "${getCurrency(product.country)} ",
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(
                              color: Colors.indigo,
                            ),
                      ),
                      TextSpan(
                        text: "${product.currentPrice}  ",
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo,
                            ),
                      ),
                      TextSpan(
                        text: "${product.previousPrice}",
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(
                              color: AppColor.greyMedium,
                              fontSize: 10,
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
    );
  }
}
