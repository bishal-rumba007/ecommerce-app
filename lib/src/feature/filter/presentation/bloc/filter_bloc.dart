import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ecommerce_app/src/feature/filter/domain/entities/attribute.dart';
import 'package:ecommerce_app/src/feature/filter/domain/usecases/get_filter_attributes_usecase.dart';

part 'filter_bloc.freezed.dart';
part 'filter_event.dart';
part 'filter_state.dart';

/// FilterBloc is responsible for managing the state of the filter functionality.
/// It handles various events related to loading filters, updating selected filters,
/// clearing filters, and applying filters.
class FilterBloc extends Bloc<FilterEvent, FilterState> {
  final GetFilterAttributesUsecase getFilterAttributesUsecase;
  FilterBloc({
    required this.getFilterAttributesUsecase,
  }) : super(const FilterState()) {
    on<LoadFilters>(_onLoadFilters);
    on<UpdateSelectedFilters>(_onUpdateSelectedFilters);
    on<ClearFilters>(_onClearFilters);
    on<FilterApplied>(_onFilterApplied);
  }
  /// [_onLoadFilters] handles the [LoadFilters] event.
  /// It sets the state to loading, fetches the filter attributes, and updates the state
  /// with the fetched attributes or an error message.
  Future<void> _onLoadFilters(
    LoadFilters event,
    Emitter<FilterState> emit,
  ) async {
    emit(state.copyWith(status: FilterStatus.loading));
    final response = await getFilterAttributesUsecase.call();
    response.fold(
      (l) => emit(
          state.copyWith(status: FilterStatus.failure, message: l.message)),
      (result) => emit(state.copyWith(
        status: FilterStatus.success,
        attributes: result,
      )),
    );
  }

  /// [_onUpdateSelectedFilters] handles the [UpdateSelectedFilters] event.
  /// It updates the selected filters in the state based on the filter type and value.
  void _onUpdateSelectedFilters(
    UpdateSelectedFilters event,
    Emitter<FilterState> emit,
  ) {
    final updatedFilters = Map<String, dynamic>.from(state.selectedFilters);
    
    if (event.isSelected) {
      // Only allow one value per attribute
      updatedFilters[event.filterType] = event.filterValue;
    } else {
      updatedFilters.remove(event.filterType);
    }
    
    emit(state.copyWith(selectedFilters: updatedFilters, isFilterApplied: false));
  }

  /// [_onClearFilters] handles the [ClearFilters] event.
  /// It clears all selected filters in the state.
  void _onClearFilters(
    ClearFilters event,
    Emitter<FilterState> emit,
  ) {
    emit(state.copyWith(selectedFilters: {}));
  }

   /// [_onFilterApplied] handles the [FilterApplied] event.
  /// It updates the state to indicate that the filter has been applied with the selected filters.
  void _onFilterApplied(
    FilterApplied event,
    Emitter<FilterState> emit,
  ) {
    emit(state.copyWith(selectedFilters: {...state.selectedFilters}, isFilterApplied: true));
  }
}
