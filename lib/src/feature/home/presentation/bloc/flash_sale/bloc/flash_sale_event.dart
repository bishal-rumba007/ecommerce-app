part of 'flash_sale_bloc.dart';

@freezed
class FlashSaleEvent with _$FlashSaleEvent {
  const factory FlashSaleEvent.fetchedFlashSale(String? selectedCountry) = FetchedFlashSale;
}