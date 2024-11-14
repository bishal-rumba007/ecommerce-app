part of 'check_out_bloc.dart';

@freezed
class CheckOutState with _$CheckOutState {
  const factory CheckOutState.initial() = _Initial;
  const factory CheckOutState.loading() = _Loading;
  const factory CheckOutState.loaded(Checkout checkOutModel) = _Loaded;
  const factory CheckOutState.error({required String message}) = _Error;
}
