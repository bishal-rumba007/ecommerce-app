part of 'selected_category_cubit.dart';

@freezed
class SelectedCategoryState with _$SelectedCategoryState {
  const factory SelectedCategoryState.initial() = _Initial;
  const factory SelectedCategoryState.categorySelected(
      Category selectedCategory) = _CategorySelected;
}
