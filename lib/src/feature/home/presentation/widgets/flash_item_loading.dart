import 'package:flutter/material.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';

class FlashItemLoading extends StatelessWidget {
  const FlashItemLoading({
    super.key,
    required this.isTablet,
  });

  final bool isTablet;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 19.5),
      padding: const EdgeInsets.symmetric(vertical: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.primary.withOpacity(0.16),
        borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            3,
            (index) {
              return Padding(
                padding: index == 0
                    ? const EdgeInsets.only(left: 16, right: 20)
                    : const EdgeInsets.only(right: 20),
                child: SizedBox(
                  width: isTablet
                      ? (MediaQuery.of(context).size.width - 68) / 3.2
                      : (MediaQuery.of(context).size.width - 48) / 2.1,
                  child: Container(
                    padding: const EdgeInsets.all(5),
    
                    decoration: BoxDecoration(
                      color: AppColor.greyLight,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AspectRatio(
                          aspectRatio: isTablet ? 16 / 12 : 16 / 14,
                          child: const ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                            child: Shimmer(),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Shimmer(
                          width: 75,
                          height: 10,
                          borderRadius: 6,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Shimmer(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          borderRadius: 6,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Shimmer(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          borderRadius: 6,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}