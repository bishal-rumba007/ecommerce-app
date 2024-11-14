import 'package:flutter/material.dart';
import 'package:ecommerce_app/src/core/utils/utils_export.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive.isTablet(context);
    return AspectRatio(
      aspectRatio: isTablet ? 16 / 3.4 : 16 / 7.2,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: index == 0
                ? const EdgeInsets.only(left: 19.5)
                : index == 4
                    ? const EdgeInsets.only(right: 19.5)
                    : null,
            width: 280,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFFA3A3A3),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: const AspectRatio(
                    aspectRatio: 16 / 6.8,
                    child: FadeInImage(
                      fit: BoxFit.cover,
                      placeholder:
                          AssetImage('assets/dummy/products/product1.jpeg'),
                      image: AssetImage('assets/dummy/products/product1.jpeg'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Spacer(),
                Text(
                  "Lorem ipsum dolorsit amet, con Lorem ",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                RichText(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "₹ 12,000",
                        style:
                            Theme.of(context).textTheme.labelMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).primaryColor,
                                ),
                      ),
                      TextSpan(
                        text: " | ",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                      ),
                      TextSpan(
                        text: "Extra ₹1,000 off on Checkout",
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 12),
      ),
    );
  }
}
