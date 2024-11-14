part of 'sliders_bloc.dart';

@freezed
class SlidersState<T> with _$SlidersState {
  const factory SlidersState.initial() = _Initial;
  const factory SlidersState.loading() = _Loading;
  const factory SlidersState.loaded(List<T> result) = _Loaded;
  const factory SlidersState.error(String message) = _Error;
}
