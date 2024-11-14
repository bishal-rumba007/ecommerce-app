part of 'cart_bloc.dart';

enum CartStatus { initial, loading, loaded, error }

@freezed
class CartState with _$CartState {

  const factory CartState({
    @Default(CartStatus.initial) CartStatus status,
    @Default(null) Cart? cart,
    String? message,
    AppException? appException,
  }) = _CartState;
}
