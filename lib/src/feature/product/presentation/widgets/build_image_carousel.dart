import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/core/utils/cache_image.dart';
import 'package:ecommerce_app/src/feature/home/presentation/widgets/carousel_indicator.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/flash_sale_discount.dart';
import 'package:ecommerce_app/src/feature/product/presentation/cubit/product_stock_cubit.dart';

class BuildImageCarousel extends StatefulWidget {
  const BuildImageCarousel(
      {super.key, this.flashSaleDiscount, required this.images});
  final FlashSaleDiscount? flashSaleDiscount;
  final List<String> images;

  @override
  State<BuildImageCarousel> createState() => _BuildImageCarouselState();
}

class _BuildImageCarouselState extends State<BuildImageCarousel> {
  late PageController _carouselController;
  int _currentIndex = 0;

  late List<String> imageUrls;

  @override
  void initState() {
    super.initState();
    imageUrls = widget.images;
    _carouselController = PageController(
      initialPage: _currentIndex,
      viewportFraction: 0.87,
    );
  }

  @override
  Widget build(BuildContext context) {
    final discount = widget.flashSaleDiscount?.discount?.floor();
    final discountType =
        widget.flashSaleDiscount?.discountType == "percentage" ? "%" : "";
    return BlocBuilder<ProductStockCubit, ProductStockState>(
      builder: (context, state) {
        if (state.selectedProductStock == null) {
          return Center(child: CircularProgressIndicator());
        }

        imageUrls = [
          state.selectedProductStock!.thumbnailImage!,
          ...widget.images,
        ];

        return AspectRatio(
          aspectRatio: 16 / 12,
          child: Stack(
            children: [
              PageView.builder(
                controller: _carouselController,
                itemCount: imageUrls.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                    child: Container(
                      margin: EdgeInsets.only(right: 10, left: 0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child:
                                CacheImageExtension(imageUrl: imageUrls[index]),
                          ),
                          if (widget.flashSaleDiscount != null)
                            Positioned(
                              top: 8,
                              left: 8,
                              child: CircleAvatar(
                                backgroundColor: AppColor.containerRed,
                                child: Text(
                                  "$discount$discountType Off",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Positioned(
                bottom: 13,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.center,
                  child: IntrinsicWidth(
                    child: Container(
                      height: 18,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: CarouselIndicator(
                        currentIndex: _currentIndex,
                        carouselController: _carouselController,
                        carouselItems: imageUrls,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _carouselController.dispose();
    super.dispose();
  }
}
