part of 'filter_bloc.dart';

  /// FilterEvent is used to define the various events that can be
  /// dispatched to the FilterBloc to trigger state changes.
@freezed
class FilterEvent with _$FilterEvent {

  /// [loadFilters] event is used to load the filter attributes.
  const factory FilterEvent.loadFilters() = LoadFilters;

  /// [updateSelectedFilters] event is used to update the selected filters.
  /// [filterType] is the type of filter (e.g., color, size).
  /// [filterValue] is the value of the filter (e.g., red, large).
  /// [isSelected] indicates whether the filter is selected or not.
  const factory FilterEvent.updateSelectedFilters(
    String filterType,
    String filterValue,
    bool isSelected,
  ) = UpdateSelectedFilters;

  /// [filterApplied] event is used to apply the selected filters.
  const factory FilterEvent.filterApplied() = FilterApplied;

  /// [clearFilters] event is used to clear all selected filters.
  const factory FilterEvent.clearFilters() = ClearFilters;
}