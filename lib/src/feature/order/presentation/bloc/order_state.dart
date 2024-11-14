part of 'order_bloc.dart';

@freezed
class OrderState<T> with _$OrderState {
  const factory OrderState.initial() = _Initial;
  const factory OrderState.loading() = _Loading;
  const factory OrderState.success(
    T result
  ) = _Success;
  const factory OrderState.failure(String message) = _Failure;
  
}
