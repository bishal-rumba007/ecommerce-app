import 'package:flutter/material.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/utils/utils_export.dart';

class ProductShimmer extends StatelessWidget {
  const ProductShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive.isTablet(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        padding: const EdgeInsets.only(top: 10, bottom: 100),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 17,
          mainAxisSpacing: 10,
          childAspectRatio: isTablet ? 1 : 0.7,
        ),
        itemCount: isTablet ? 3 : 5,
        itemBuilder: (context, index) {
          return const ProductCardShimmer();
        },
      ),
    );
  }
}

class ProductCardShimmer extends StatelessWidget {
  const ProductCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive.isTablet(context);
    return Container(
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
          ]),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: isTablet ? 16 / 10 : 16 / 14,
            child: const Shimmer(
              borderRadius: 12,
            ),
          ),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 40),
                  child: Shimmer(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                    borderRadius: 4,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Shimmer(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                  borderRadius: 4,
                ),
                SizedBox(
                  height: 5,
                ),
                Shimmer(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                  borderRadius: 4,
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 60),
                  child: Shimmer(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                    borderRadius: 4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
