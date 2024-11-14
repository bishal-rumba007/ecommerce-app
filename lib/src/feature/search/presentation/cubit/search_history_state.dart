part of 'search_history_cubit.dart';

@freezed
class SearchHistoryState with _$SearchHistoryState {
  const factory SearchHistoryState.initial() = _Initial;
  const factory SearchHistoryState.loading() = _Loading;
  const factory SearchHistoryState.loaded(List<String> searchHistory) = _Loaded;
  const factory SearchHistoryState.error(String message) = _Error;
}
