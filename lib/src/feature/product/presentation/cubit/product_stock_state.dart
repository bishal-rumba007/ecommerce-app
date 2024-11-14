part of 'product_stock_cubit.dart';

@freezed
class ProductStockState with _$ProductStockState {
  const factory ProductStockState({
    @Default(null) ProductStock? selectedProductStock,
  }) = _ProductStockState;
}