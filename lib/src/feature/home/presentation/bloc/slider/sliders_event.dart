part of 'sliders_bloc.dart';

@freezed
class SlidersEvent with _$SlidersEvent {
  const factory SlidersEvent.fetchedSliders() = FetchedSliders;
  const factory SlidersEvent.fetchedBanners() = FetchedBanners;
  const factory SlidersEvent.fetchedBottomBanners() = FetchedBottomBanners;
}