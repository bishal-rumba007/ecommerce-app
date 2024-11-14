import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ecommerce_app/src/feature/search/domain/usecases/clear_search_query_usecase.dart';
import 'package:ecommerce_app/src/feature/search/domain/usecases/get_search_history_usecase.dart';
import 'package:ecommerce_app/src/feature/search/domain/usecases/remove_search_query_usecase.dart';
import 'package:ecommerce_app/src/feature/search/domain/usecases/save_search_query_usecase.dart';

part 'search_history_cubit.freezed.dart';
part 'search_history_state.dart';

class SearchHistoryCubit extends Cubit<SearchHistoryState> {
  final GetSearchHistoryUsecase getSearchHistoryUsecase;
  final SaveSearchQueryUsecase saveSearchQueryUsecase;
  final ClearSearchQueryUsecase clearSearchQueryUsecase;
  final RemoveSearchQueryUsecase removeSearchQueryUsecase;
  SearchHistoryCubit({
    required this.getSearchHistoryUsecase,
    required this.saveSearchQueryUsecase,
    required this.clearSearchQueryUsecase,
    required this.removeSearchQueryUsecase,
  }) : super(SearchHistoryState.initial());

  Future<void> getSearchHistory() async {
    emit(SearchHistoryState.loading());
    final result = await getSearchHistoryUsecase.call();
    result.fold(
      (error) => emit(SearchHistoryState.error(error.message)),
      (data) => emit(SearchHistoryState.loaded(data)),
    );
  }

  Future<void> saveSearchQuery(String query) async {
    final result = await saveSearchQueryUsecase.call(query);
    result.fold(
      (error) => emit(SearchHistoryState.error(error.message)),
      (_) => getSearchHistory(),
    );
  }

  Future<void> clearSearchQueries() async {
    final result = await clearSearchQueryUsecase.call();
    result.fold(
      (error) => emit(SearchHistoryState.error(error.message)),
      (_) => getSearchHistory(),
    );
  }

  Future<void> removeSearchQuery(String query) async {
    final result = await removeSearchQueryUsecase.call(query);
    result.fold(
      (error) => emit(SearchHistoryState.error(error.message)),
      (_) => getSearchHistory(),
    );
  }


}
