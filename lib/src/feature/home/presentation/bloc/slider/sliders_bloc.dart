import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ecommerce_app/src/feature/home/domain/entities/banners.dart';
import 'package:ecommerce_app/src/feature/home/domain/entities/sliders.dart';
import 'package:ecommerce_app/src/feature/home/domain/usecases/get_banner_usecase.dart';
import 'package:ecommerce_app/src/feature/home/domain/usecases/get_bottom_banner_usecase.dart';
import 'package:ecommerce_app/src/feature/home/domain/usecases/get_slider_image_usecase.dart';

part 'sliders_bloc.freezed.dart';
part 'sliders_event.dart';
part 'sliders_state.dart';

class SlidersBloc extends Bloc<SlidersEvent, SlidersState> {
  final GetSliderImageUsecase getSliderUsecase;
  final GetBannerUsecase getBannerUsecase;
  final GetBottomBannerUsecase getBottomBannerUsecase;

  SlidersBloc({
    required this.getSliderUsecase,
    required this.getBannerUsecase,
    required this.getBottomBannerUsecase
  }) : super(const _Initial()) {
    on<FetchedSliders>(fetchSliders);
    on<FetchedBanners>(fetchBanners);
    on<FetchedBottomBanners>(fetchBottomBanners);
  }

  Future<void> fetchSliders(
    FetchedSliders event,
    Emitter<SlidersState> emit
  ) async {
    emit(const _Loading());
    final result = await getSliderUsecase();
    result.fold(
      (l) => emit(_Error(l.toString())),
      (r) => emit(_Loaded<Sliders>(r)),
    );
  }
  
  Future<void> fetchBanners(
    FetchedBanners event,
    Emitter<SlidersState> emit
  ) async {
    emit(const _Loading());
    final result = await getBannerUsecase.call();
    result.fold(
      (l) => emit(_Error(l.toString())),
      (r) => emit(_Loaded<Banners>(r)),
    );
  }

  Future<void> fetchBottomBanners(
    FetchedBottomBanners event,
    Emitter<SlidersState> emit
  ) async {
    emit(const _Loading());
    final result = await getBottomBannerUsecase.call();
    result.fold(
      (l) => emit(_Error(l.toString())),
      (r) => emit(_Loaded<Banners>(r)),
    );
  }

}
