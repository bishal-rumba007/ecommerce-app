part of 'product_bloc.dart';

enum ProductStateStatus { initial, loading, loaded, error }

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    @Default(ProductStateStatus.initial) ProductStateStatus status,
    @Default(<Product>[]) List<Product> products,
    @Default(false) bool hasReachedMax,
    String? message,
  }) = _ProductState;
}