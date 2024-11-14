import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/core/utils/cache_image.dart';
import 'package:ecommerce_app/src/core/utils/utils_export.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.index,
    required this.product,
  });

  final int index;
  final Product product;

  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive.isTablet(context);
    final name = product.productName;
   final flashSaleDiscount = product.discount;
    final discount = flashSaleDiscount != null ? flashSaleDiscount.discount?.floor() : 0;
    final discountType = flashSaleDiscount?.discountType == "percentage" ? "%" : "";
    final discountedAmount = flashSaleDiscount?.discountedAmount;
    final currentPrice = flashSaleDiscount != null ? discountedAmount : product.currentPrice;
    final previousPrice = flashSaleDiscount != null ? product.currentPrice : product.previousPrice;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          context.push('/product-detail/${product.productSlug}', extra: product.country);
        },
        splashColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
        splashFactory: InkSparkle.splashFactory,
        child: Ink(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                width: 0.5,
                color: Theme.of(context).colorScheme.primary.withOpacity(0.06),
              ),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.06),
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ]
              ),
          child: Column(
            children: [
              Stack(
                children: [
                  AspectRatio(
                   aspectRatio: isTablet ? 16 / 10 : 16 / 14,
                   child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(12),),
                    child: CacheImageExtension(imageUrl: product.productImage)),
                  ),
                  Visibility(
                    visible: product.discount != null,
                    child: Positioned(
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
                      product.categoryName,
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
                          text: "${getCurrency(product.country)} $currentPrice  ",
                          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo,
                              ),
                        ),
                        TextSpan(
                          text: "${getCurrency(product.country)}$previousPrice",
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
        ),
      ),
    );
  }
}
