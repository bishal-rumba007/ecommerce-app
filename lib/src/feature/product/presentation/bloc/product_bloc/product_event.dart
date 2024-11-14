part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.fetchedProducts(String? selectedCountry) = _FetchedProducts;
  const factory ProductEvent.fetchedCategoryProductList(String slug,String? selectedCountry) = _FetchedCategoryProductList;
  const factory ProductEvent.fetchedSubCategoryProductList(String slug,String? selectedCountry, Map<String, dynamic>? filter) = _FetchedSubCategoryProductList;
  const factory ProductEvent.refreshedSubCategoryProducts(String slug, String? selectedCountry) = _RefreshedSubCategoryProducts;
  const factory ProductEvent.refreshedCategoryProducts(String slug, String? selectedCountry) = _RefreshedCategoryProducts;
}