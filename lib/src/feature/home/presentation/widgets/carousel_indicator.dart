import 'package:flutter/material.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';

class CarouselIndicator extends StatefulWidget {
  final int currentIndex;
  final PageController carouselController;
  final List<String> carouselItems;
  final Color? activeIndicatorColor;
  final Color? indicatorColor;

  const CarouselIndicator({
    super.key,
    required this.currentIndex,
    required this.carouselController,
    required this.carouselItems,
    this.activeIndicatorColor = AppColor.primary,
    this.indicatorColor,
  });

  @override
  State<CarouselIndicator> createState() => _CarouselIndicatorState();
}

class _CarouselIndicatorState extends State<CarouselIndicator> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: widget.carouselItems.asMap().entries.map((entry) {
        return GestureDetector(
          onTap: () => widget.carouselController.animateToPage(
            entry.key,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
          ),
          child: AnimatedContainer(
            curve: Curves.easeIn,
            duration: const Duration(milliseconds: 200),
            width: 5,
            height: widget.currentIndex == entry.key ? 9 : 5,
            margin: const EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(
              color: widget.currentIndex == entry.key
                  ? widget.activeIndicatorColor
                  : widget.indicatorColor ?? AppColor.primary.withOpacity(0.35),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        );
      }).toList(),
    );
  }
}
