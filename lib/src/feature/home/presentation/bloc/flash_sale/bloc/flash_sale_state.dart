part of 'flash_sale_bloc.dart';

@freezed
class FlashSaleState with _$FlashSaleState {
  const factory FlashSaleState.initial() = _Initial;
  const factory FlashSaleState.loading() = _Loading;
  const factory FlashSaleState.loaded(List<FlashSale> flashSales) = _Loaded;
  const factory FlashSaleState.error(String message) = _Error;
}
