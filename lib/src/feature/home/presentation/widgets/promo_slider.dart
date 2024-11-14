import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/src/core/common/widgets/shimmer.dart';
import 'package:ecommerce_app/src/feature/home/domain/entities/banners.dart';
import 'package:ecommerce_app/src/feature/home/presentation/bloc/slider/sliders_bloc.dart';

class PromoSlider extends StatefulWidget {
  const PromoSlider({super.key, required this.aspectRatio, this.padding});
  final double aspectRatio;
  final EdgeInsetsGeometry? padding;

  @override
  State<PromoSlider> createState() => _PromoSliderState();
}

class _PromoSliderState extends State<PromoSlider> {
  late PageController _pageController;
  Timer? _timer;
  int currentIndex = 0;
  List<String> _sliderImages = [];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        currentIndex = _pageController.page!.round();
      });
    });
  }

    void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      if (_pageController.page!.round() == _sliderImages.length - 1) {
        _pageController.animateTo(
          0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      } else {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SlidersBloc, SlidersState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            context.read<SlidersBloc>().add(const FetchedBottomBanners());
            return const SizedBox.shrink();
          },
          loading: () {
            return Padding(
              padding: widget.padding  ?? const EdgeInsets.all(0),
              child: AspectRatio(
                aspectRatio: widget.aspectRatio,
                child: Shimmer(
                  width: double.infinity,
                  borderRadius: widget.padding == null ? 6 : 16,
                ),
              ),
            );
          },
          loaded: (result) {
            final banners = result as List<Banners>;
            final bannerList = banners.map((e) => e.title).toList();
            _sliderImages = banners.map((e) => e.imageUrl).toList();
            if (_timer == null) {
              _startTimer();
            }
            return AspectRatio(
              aspectRatio: widget.aspectRatio,
              child: Container(
                 padding: widget.padding ?? EdgeInsets.zero,
                width: double.infinity,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: bannerList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade50,
                        borderRadius: BorderRadius.circular(widget.padding == null ? 6 : 12,),
                        image: DecorationImage(
                          image: CachedNetworkImageProvider(banners[index].imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
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

  
  @override
  void dispose() {
    _pageController.dispose();
    _timer?.cancel();
    super.dispose();
  }
}
