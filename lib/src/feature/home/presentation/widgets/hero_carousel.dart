import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/src/core/utils/responsive.dart';
import 'package:ecommerce_app/src/feature/home/presentation/widgets/carousel_indicator.dart';
import 'package:ecommerce_app/src/feature/categories/presentation/widgets/category_container.dart';

class HeroCarousel extends StatefulWidget {
  const HeroCarousel({
    super.key,
    required this.sliderImages,
  });

  final List<String> sliderImages;

  @override
  State<HeroCarousel> createState() => _HeroCarouselState();
}

class _HeroCarouselState extends State<HeroCarousel> {
  late final List<String> _infiniteSliderImages;
  final PageController _carouselController = PageController(initialPage: 1);
  int currentIndex = 1;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    // Create the infinite slider images list
    if (widget.sliderImages.length > 1) {
      _infiniteSliderImages = [
        widget.sliderImages.last,
        ...widget.sliderImages,
        widget.sliderImages.first,
      ];
    } else {
      _infiniteSliderImages = widget.sliderImages;
    }

    if (widget.sliderImages.length > 1) {
      _carouselController.addListener(() {
        setState(() {
          currentIndex = _carouselController.page!.round();

          // Handle infinite loop
          if (currentIndex == 0) {
            _carouselController.jumpToPage(_infiniteSliderImages.length - 2);
          } else if (currentIndex == _infiniteSliderImages.length - 1) {
            _carouselController.jumpToPage(1);
          }
        });
      });

      _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
        if (_carouselController.page!.round() ==
            _infiniteSliderImages.length - 2) {
          _carouselController.nextPage(
            duration: const Duration(milliseconds: 1200),
            curve: Curves.easeIn,
          );
        } else {
          _carouselController.nextPage(
            duration: const Duration(milliseconds: 1200),
            curve: Curves.easeIn,
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive.isTablet(context);
    // Calculate the actual index for the CarouselIndicator
    int actualIndex = widget.sliderImages.length > 1
        ? (currentIndex - 1) % widget.sliderImages.length
        : 0;
    return SizedBox(
      height: isTablet ? 310 : 420,
      width: double.infinity,
      child: Stack(
        fit: StackFit.loose,
        children: [
          _buildPageView(),
          Positioned(
            bottom: 95,
            left: 0,
            right: 0,
            child: CarouselIndicator(
              currentIndex: actualIndex,
              carouselController: _carouselController,
              carouselItems: widget.sliderImages,
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CategoryContainer(),
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              automaticallyImplyLeading: false,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPageView() {
    final isTablet = Responsive.isTablet(context);
    return AspectRatio(
      aspectRatio: isTablet ? 16 / 5 : 1,
      child: PageView.builder(
        controller: _carouselController,
        scrollDirection: Axis.horizontal,
        itemCount: _infiniteSliderImages.length,
        itemBuilder: (context, index) {
          return CachedNetworkImage(
            imageUrl: _infiniteSliderImages[index],
            fit: BoxFit.cover,
            fadeInCurve: Curves.easeIn,
            errorWidget: (context, url, error) => const Icon(Icons.error),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _carouselController.dispose();
    _timer?.cancel();
    super.dispose();
  }
}
