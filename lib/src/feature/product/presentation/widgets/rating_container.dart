import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/feature/review/domain/entities/review.dart';

/// Rating Container for the products rating and reviews information
class RatingContainer extends StatefulWidget {
  const RatingContainer({super.key, required this.reviews});
  final List<Review> reviews;

  @override
  State<RatingContainer> createState() => _RatingContainerState();
}

class _RatingContainerState extends State<RatingContainer> {
  late Map<int, double> ratingDistribution;
  late double _rating;
  late int _reviewCount;

  @override
  void initState() {
    super.initState();
    setReviewData();
    _calculateRatingDistribution();
  }

  void setReviewData() {
    if (widget.reviews.isNotEmpty) {
      _rating = widget.reviews.map((e) => e.rating).reduce((a, b) => a + b) /
          widget.reviews.length;
      _reviewCount = widget.reviews.length;
    } else {
      _rating = 0;
      _reviewCount = 0;
    }
  }

  void _calculateRatingDistribution() {
    ratingDistribution = {1: 0, 2: 0, 3: 0, 4: 0, 5: 0};
    widget.reviews.asMap().map(
      (index, review) {
        ratingDistribution[index] = ratingDistribution[review.rating]!;
        return MapEntry(index, review.rating);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.surface,
    ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Reviews & Ratings",
            style: Theme.of(context).textTheme.labelLarge,
          ),
          SizedBox(
            height: 12,
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                context.push('/product-review');
              },
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withAlpha(10),  
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: "$_rating",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.w800,
                                  ),
                            ),
                            TextSpan(
                              text: " /5",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ]),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Based on $_reviewCount Reviews",
                          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        _buildStars(context, _rating),
                      ],
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(
                          5,
                          (index) {
                            int star = 5 - index;
                            double ratingPercentage = _reviewCount > 0
                                ? ratingDistribution[star]! / _reviewCount
                                : 0.0;
                  
                            return Row(
                              children: [
                                Text(
                                  "$star Star",
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: LinearProgressIndicator(
                                    value: ratingPercentage,
                                    backgroundColor: Theme.of(context)
                                        .colorScheme
                                        .onSurfaceVariant
                                        .withOpacity(0.2),
                                    valueColor:
                                        const AlwaysStoppedAnimation<Color>(
                                            Colors.yellow),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }

  Row _buildStars(BuildContext context, double rating) {
    int fullStars = rating.floor();
    bool hasHalfStar = (rating - fullStars) >= 0.5;
    int emptyStars = 5 - fullStars - (hasHalfStar ? 1 : 0);
    return Row(
      children: [
        Row(
          children: List.generate(
            fullStars,
            (index) => const Icon(
              Icons.star_rate_rounded,
              color: AppColor.brandYellow,
              size: 20,
            ),
          ),
        ),
        if (hasHalfStar)
          const Icon(
            Icons.star_half_rounded,
            color: AppColor.brandYellow,
            size: 20,
          ),
        Row(
          children: List.generate(
            emptyStars,
            (index) => Icon(
              Icons.star_rounded,
              size: 20,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      ],
    );
  }
}
