part of 'product_detail_bloc.dart';

@freezed
class ProductDetailEvent with _$ProductDetailEvent {
  const factory ProductDetailEvent.fetchedProductDetail(String slug, String? selectedCountry) = _FetchedProductDetail;
}