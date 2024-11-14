import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/core/utils/cache_image.dart';
import 'package:ecommerce_app/src/core/utils/responsive.dart';
import 'package:ecommerce_app/src/feature/home/domain/entities/banners.dart';
import 'package:ecommerce_app/src/feature/home/presentation/bloc/slider/sliders_bloc.dart';
import 'package:ecommerce_app/src/feature/home/presentation/widgets/carousel_indicator.dart';

class PromoContainer extends StatefulWidget {
  const PromoContainer({super.key});

  @override
  State<PromoContainer> createState() => _PromoContainerState();
}

class _PromoContainerState extends State<PromoContainer> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    context.read<SlidersBloc>().add(const FetchedBanners());
  }

  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive.isTablet(context);
    return BlocBuilder<SlidersBloc, SlidersState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () {
            return Padding(
              padding: const EdgeInsets.fromLTRB(19.5, 0, 19.5, 20),
              child: AspectRatio(
                aspectRatio: isTablet ? 16 / 5 : 16 / 6.5,
                child: Stack(
                  children: [
                    const Shimmer(
                      width: double.infinity,
                      height: 150,
                      borderRadius: 16,
                    ),
                    Positioned(
                      bottom: isTablet ? 80 : 6,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          3,
                          (index) => const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Shimmer(
                              width: 12,
                              height: 12,
                              borderRadius: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          loaded: (result) {
            final banners = result as List<Banners>;
            final bannerList = banners.map((e) => e.title).toList();
            return Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                AspectRatio(
                  aspectRatio: isTablet ? 16 / 5 : 16 / 7,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(19.5, 0, 19.5, 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: banners.length,
                        onPageChanged: (index) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        itemBuilder: (context, index) {
                          return Center(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: CacheImageExtension(
                                imageUrl: banners[index].imageUrl,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: isTablet ? 40 : 30,
                  left: 0,
                  right: 0,
                  child: CarouselIndicator(
                    currentIndex: currentIndex,
                    carouselController: _pageController,
                    carouselItems: bannerList,
                    indicatorColor: const Color(0xFFCFCDFF),
                    activeIndicatorColor: AppColor.white,
                  ),
                )
              ],
            );
          },
          error: (error) {
            return Center(
              child: Text(error),
            );
          },
        );
      },
    );
  }
}
