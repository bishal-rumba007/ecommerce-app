part of 'search_product_bloc.dart';

enum SearchProductStatus { initial, loading, success, failure }

@freezed
class SearchProductState with _$SearchProductState {
  const factory SearchProductState({
    @Default(SearchProductStatus.initial) SearchProductStatus status,
    @Default(<Product>[]) List<Product> products,
    @Default(false) bool hasReachedMax,
    String? message,
    }) = _SearchProductState;
}
