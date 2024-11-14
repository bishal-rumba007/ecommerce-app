
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/src/feature/home/domain/entities/sliders.dart';
import 'package:ecommerce_app/src/feature/home/presentation/bloc/slider/sliders_bloc.dart';
import 'package:ecommerce_app/src/feature/home/presentation/widgets/hero_carousel.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SlidersBloc, SlidersState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            context.read<SlidersBloc>().add(const FetchedSliders());
            return const SafeArea(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
          loading: () => const SafeArea(
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(top: 14.0),
                child: CircularProgressIndicator(),
              ),
            ),
          ),
          loaded: (result) {
            final sliders = result as List<Sliders>;
            final sliderImages = sliders.map(
              (e) {
                return e.imageUrl;
              },
            ).toList();
            return HeroCarousel(sliderImages: sliderImages);
          },
          error: (message) {
            return Center(
              child: Text(message),
            );
          },
        );
      },
    );
  }
}
