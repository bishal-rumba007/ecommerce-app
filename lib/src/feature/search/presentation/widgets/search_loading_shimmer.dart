import 'package:flutter/material.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';

class SearchLoadingShimmer extends StatelessWidget {
  const SearchLoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Shimmer(
                height: 100,
                width: 100,
                borderRadius: 10,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Shimmer(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      borderRadius: 6,
                    ),
                    SizedBox(height: 6),
                    Shimmer(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      borderRadius: 6,
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(right: 80),
                      child: Shimmer(
                        padding: EdgeInsets.symmetric(vertical: 6),
                        borderRadius: 4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
