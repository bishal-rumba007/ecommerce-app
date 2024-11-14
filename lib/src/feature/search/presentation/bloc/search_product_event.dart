part of 'search_product_bloc.dart';

@freezed
class SearchProductEvent with _$SearchProductEvent {
const factory SearchProductEvent.searchedProducts(String query, String? selectedCountry) = _SearchedProducts;
const factory SearchProductEvent.loadedMoreProducts(String query, String? selectedCountry) = _LoadedMoreProducts;
const factory SearchProductEvent.clearedSearch() = _ClearedSearch;
const factory SearchProductEvent.clearedSearchQueries() = _ClearedSearchQueries;
const factory SearchProductEvent.deletedSearchQuery(String query) = _DeletedSearchQuery;
const factory SearchProductEvent.fetchedSearchQueries() = _FetchedSearchQueries;
const factory SearchProductEvent.savedSearchQuery(String query) = _SavedSearchQuery;
}