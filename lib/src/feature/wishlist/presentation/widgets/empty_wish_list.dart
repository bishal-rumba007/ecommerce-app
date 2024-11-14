import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyWishList extends StatelessWidget {
  const EmptyWishList({
    super.key,
    required this.message,
  });
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 14,
            child: SvgPicture.asset(
              "assets/images/empty_cart.svg",
              fit: BoxFit.scaleDown,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Nothing in Wishlist!",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "$message",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
