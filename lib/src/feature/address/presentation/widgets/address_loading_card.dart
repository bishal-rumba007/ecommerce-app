import 'package:flutter/material.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';

class LoadingAddressCard extends StatelessWidget {
  const LoadingAddressCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Shimmer(
          width: 100,
          height: 20,
          borderRadius: 4,
        ),
        SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.all(12),
          height: 120,
          width: 280,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSurfaceVariant.withOpacity(0.05),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Row(
                children: [
                  Shimmer(
                    padding: EdgeInsets.all(20),
                    borderRadius: 20,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Shimmer(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      borderRadius: 6,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6),
              Shimmer(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                borderRadius: 4,
              ),
              SizedBox(height: 6),
              Padding(
                padding: EdgeInsets.only(right: 80),
                child: Shimmer(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                  borderRadius: 4,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
