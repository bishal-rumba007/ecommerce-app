part of 'filter_bloc.dart';

enum FilterStatus { initial, loading, success, failure }

  /// FilterState is used to manage the state of the filter functionality
  /// in the application, including the list of attributes, the status of
  /// the filter operation, any error messages, the selected filters, and
  /// whether a filter has been applied.
@freezed
class FilterState with _$FilterState {

  const factory FilterState({
    /// [attributes] holds the list of filter attributes available for filtering.
    @Default([]) List<Attribute> attributes,

    /// [status] represents the current status of the filter operation
    /// (e.g., initial, loading, success, failure).
    @Default(FilterStatus.initial) FilterStatus status,

    /// [message] contains any error messages related to the filter operation.
    @Default('') String message,

    /// [selectedFilters] holds the currently selected filter values.
    @Default({}) Map<String, dynamic> selectedFilters,

    /// [isFilterApplied] is used to mark if a filter has been applied.
    /// which is then used to listen to changes in the filter state and call the
    /// appropriate method to fetch the filtered data. in product grid view screen.
    @Default(false) bool isFilterApplied,
  }) = _FilterState;
}