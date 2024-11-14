import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/core/utils/cache_image.dart';
import 'package:ecommerce_app/src/core/utils/utils_export.dart';
import 'package:ecommerce_app/src/feature/home/domain/entities/flash_item.dart';

class FlashItemCard extends StatelessWidget {
  const FlashItemCard({
    super.key,
    required this.index,
    required this.flashItem,
  });

  final int index;
  final FlashItem flashItem;

  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive.isTablet(context);
    final name = flashItem.productName;
    final flashSaleDiscount = flashItem.discount;
    final discount = flashSaleDiscount != null ? flashSaleDiscount.discount?.floor() : 0;
    final discountType = flashSaleDiscount?.discountType == "percentage" ? "%" : "";
    final discountedAmount = flashSaleDiscount?.discountedAmount;
    final currentPrice = flashSaleDiscount != null ? discountedAmount : flashItem.currentPrice;
    final previousPrice = flashSaleDiscount != null ? flashItem.currentPrice : flashItem.previousPrice;

    return InkWell(
      onTap: () {
        context.push('/product-detail/${flashItem.productSlug}');
      },
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            Stack(
              children: [
                AspectRatio(
                 aspectRatio: isTablet ? 16 / 12 : 16 / 14,
                 child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12),),
                  child: CacheImageExtension(imageUrl: flashItem.productImage)),
                ),
                Positioned(
                  top: 5.74,
                  right: 5.74,
                  child: Container(
                    padding:
                        const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: AppColor.containerRed,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "$discount$discountType Off",
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(
                              fontSize: 7,
                              color: AppColor.white,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    flashItem.country,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: AppColor.greyMedium,
                        ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    name,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(fontSize: 10),
                    maxLines: isTablet ? 3 : 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "${getCurrency(flashItem.country)}$currentPrice  ",
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo,
                            ),
                      ),
                      TextSpan(
                        text: "${getCurrency(flashItem.country)}$previousPrice",
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
            const SizedBox(
              height: 6,
            ),
          ],
        ),
      ),
    );
  }

  String getProductNameSlash(String productName, bool isTablet) {
    return productName.length < 14
        ? productName
        : '${productName.substring(0, (isTablet ? 14 : 9))}...';
  }
}
