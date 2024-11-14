part of 'product_detail_bloc.dart';

@freezed
class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState.initial() = _Initial;
  const factory ProductDetailState.loading() = _Loading;
  const factory ProductDetailState.success(ProductDetail productDetail) = _Success;
  const factory ProductDetailState.failure(String message) = _Failure;
}
