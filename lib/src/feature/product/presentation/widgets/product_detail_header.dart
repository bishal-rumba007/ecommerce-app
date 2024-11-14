import 'package:flutter/material.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product_detail.dart';

class ProductDetailHeader extends StatefulWidget {
  const ProductDetailHeader({super.key, required this.productDetail});
  final ProductDetail productDetail;

  @override
  State<ProductDetailHeader> createState() => _ProductDetailHeaderState();
}

class _ProductDetailHeaderState extends State<ProductDetailHeader> {
  late double _rating;
  late int _reviewCount;

  @override
  void initState() {
    super.initState();
    setReviewData();
  }

  void setReviewData() {
    final reviews = widget.productDetail.reviews;
    if(reviews.isNotEmpty){
      _rating = reviews.map((e) => e.rating).reduce((a, b) => a + b) / reviews.length;
      _reviewCount = reviews.length;
    } else {
      _rating = 0;
      _reviewCount = 0;
    }
  }


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Brand ",
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: widget.productDetail.brandName,
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    TextSpan(
                      text: " ${widget.productDetail.modelNo}",
                      style: theme.textTheme.labelMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          const SizedBox(width: 14),
          Row(
            children: [
              Icon(
                Icons.star_rounded,
                color: AppColor.brandYellow,
                size: 16,
              ),
              Text(
                "$_rating",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                " ($_reviewCount Reviews)",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
