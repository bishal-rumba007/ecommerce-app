import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product.dart';
import 'package:ecommerce_app/src/feature/search/domain/usecases/search_products_usecase.dart';
import 'package:stream_transform/stream_transform.dart';

part 'search_product_bloc.freezed.dart';
part 'search_product_event.dart';
part 'search_product_state.dart';

// [_productLimit] is the limit of products to be fetched
const _productLimit = 10;

// [_throttleDuration] is the duration used to throttle the load more event
const _throttleDuration = Duration(milliseconds: 100);

// Event transformer used to throttle the load more event
EventTransformer<E> _throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

// Event transformer used to debounce the search event
EventTransformer<SearchJob> debounce<SearchJob>() {
  return (events, mapper) =>
      events.debounce(_throttleDuration).switchMap(mapper);
}

class SearchProductBloc extends Bloc<SearchProductEvent, SearchProductState> {
  final SearchProductUsecase searchProductUsecase;
  SearchProductBloc({
    required this.searchProductUsecase,
  }) : super(SearchProductState()) {
    on<_SearchedProducts>(
      _searchProducts,
      transformer: debounce(),
    );
    on<_LoadedMoreProducts>(
      _loadMoreProducts,
      transformer: _throttleDroppable(_throttleDuration),
    );
    on<_ClearedSearch>(_onClearSearch);
  }

  int currentPage = 1;
  int totalItems = 0;
  int totalPages = 1;

  // [_onSearchJob] method is called when a [SearchJob] event is added to the bloc
  // It fetches the products based on the query and updates the state accordingly
  // It also updates the [totalItems] and [totalPages] variables
  // It also updates the [hasReachedMax] variable based on the number of products fetched
  // It updates the state with the fetched products and the status of the search
  Future<void> _searchProducts(
    _SearchedProducts event,
    Emitter<SearchProductState> emit,
  ) async {
    currentPage = 1;
    emit(state.copyWith(status: SearchProductStatus.loading));
    final response = await searchProductUsecase.call(SearchProductParam(
      query: event.query,
      page: currentPage,
      limit: _productLimit,
      selectedCountry: event.selectedCountry,
    ));

    response.fold(
      (exception) => emit(state.copyWith(
          status: SearchProductStatus.failure, message: exception.message)),
      (result) {
        totalItems = result.totalItems;
        totalPages = result.totalPages;
        emit(state.copyWith(
          status: SearchProductStatus.success,
          products: result.products,
          hasReachedMax: result.products.length < _productLimit,
        ));
      },
    );
  }

  // [_loadMoreProducts] method is called when a [_LoadedMoreProducts] event is added to the bloc.
  // It fetches more products based on the current page and updates the state accordingly.
  // It also updates the [totalItems] and [totalPages] variables.
  // It updates the [hasReachedMax] variable based on the number of products fetched.
  // It appends the fetched products to the existing list of products in the state.
  Future<void> _loadMoreProducts(
    _LoadedMoreProducts event,
    Emitter<SearchProductState> emit,
  ) async {
    if (state.hasReachedMax) return;
    currentPage++;
    final response = await searchProductUsecase.call(SearchProductParam(
      query: event.query,
      page: currentPage,
      limit: _productLimit,
      selectedCountry: event.selectedCountry,
    ));

    response.fold(
      (exception) => emit(state.copyWith(
          status: SearchProductStatus.failure, message: exception.message)),
      (result) {
        totalItems = result.totalItems;
        totalPages = result.totalPages;
        emit(state.copyWith(
          status: SearchProductStatus.success,
          products: List.of(state.products)..addAll(result.products),
          hasReachedMax: result.products.length < _productLimit,
        ));
      },
    );
  }

  // [_onClearSearch] method is called when a [ClearSearch] event is added to the bloc
  // It clears the search and updates the state accordingly
  Future<void> _onClearSearch(
    _ClearedSearch event,
    Emitter<SearchProductState> emit,
  ) async {
    try {
      currentPage = 1;
      emit(state.copyWith(status: SearchProductStatus.loading));
      emit(const SearchProductState());
    } catch (e) {
      emit(state.copyWith(
        status: SearchProductStatus.failure,
        message: e.toString(),
      ));
    }
  }
}
