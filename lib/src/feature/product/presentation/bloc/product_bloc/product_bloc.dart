import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product.dart';
import 'package:ecommerce_app/src/feature/product/domain/usecases/get_category_product_usecase.dart';
import 'package:ecommerce_app/src/feature/product/domain/usecases/get_products_usecase.dart';
import 'package:ecommerce_app/src/feature/product/domain/usecases/get_sub_category_product_list_usecase.dart';
import 'package:stream_transform/stream_transform.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

const _productLimit = 8;
// Duration
const throttleDuration = Duration(milliseconds: 100);

// Event Transformer for throttling events with a duration of 100 milliseconds
// it will drop events that are emitted within the 100 milliseconds duration
// and only emit the last event after the 100 milliseconds duration
EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

// Product Bloc to handle the state management of the product view
// it will handle the state of the product view screen and popular products
// each will use a different usecase to fetch the data and use different
// instance of the product state
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProductsUsecase getProductsUsecase;
  final GetSubCategoryProductListUsecase getSubCategoryProductListUsecase;
  final GetCategoryProductUsecase getCategoryProductUsecase;
  ProductBloc({
    required this.getProductsUsecase,
    required this.getSubCategoryProductListUsecase,
    required this.getCategoryProductUsecase,
  }) : super(
          ProductState(status: ProductStateStatus.initial),
        ) {
    on<_FetchedProducts>(_fetchProducts);
    on<_FetchedSubCategoryProductList>(
      _fetchSubCategoryProducts,
      transformer: throttleDroppable(throttleDuration),
    );
    on<_FetchedCategoryProductList>(
      _fetchCategoryProducts,
      transformer: throttleDroppable(throttleDuration),
    );
    on<_RefreshedSubCategoryProducts>(_onRefreshedSubCategoryProducts);
    on<_RefreshedCategoryProducts>(_onRefreshedCategoryProducts);
  }

  final List<Product> _cachedProducts = [];
  final List<Product> _cachedCategoryProducts = [];
  // ignore: prefer_final_fields
  int currentPage = 1;
  int totalItems = 0;
  int totalPages = 1;

  // fetch popular products
  // this will be called when the user navigates to the home screen
  // and the popular products are displayed. it doesn't require pagination
  Future<void> _fetchProducts(
    _FetchedProducts event,
    Emitter<ProductState> emit,
  ) async {
    emit(
      state.copyWith(
        status: ProductStateStatus.loading,
      ),
    );
    final result = await getProductsUsecase.call(event.selectedCountry);
    result.fold(
      (error) => emit(
        state.copyWith(
          status: ProductStateStatus.error,
          message: error.message,
        ),
      ),
      (products) => emit(
        state.copyWith(
          status: ProductStateStatus.loaded,
          products: products,
        ),
      ),
    );
  }

  // fetch sub category products with pagination support
  // since the product view requires infinite scrolling
  // we need to fetch products with pagination support
  Future<void> _fetchSubCategoryProducts(
    _FetchedSubCategoryProductList event,
    Emitter<ProductState> emit,
  ) async {
    if (state.hasReachedMax) return;

    // if the state is initial, fetch the first page of products
    // and cache the products
    if (state.status == ProductStateStatus.initial) {
      // if the cached products are not empty, emit the cached products
      if (_cachedProducts.isNotEmpty) {
        emit(state.copyWith(
          status: ProductStateStatus.loaded,
          products: _cachedProducts,
          hasReachedMax: _cachedProducts.length < _productLimit,
        ));
        return;
      }

      // if the cached products are empty, fetch the first page of products
      final response = await getSubCategoryProductListUsecase.call(
        GetProductParams(
          slug: event.slug,
          page: currentPage,
          limit: _productLimit,
          country: event.selectedCountry,
          filter: event.filter,
        ),
      );

      // handle the response from the usecase and emit the state
      // with the fetched products
      response.fold(
        (exception) => emit(state.copyWith(status: ProductStateStatus.error)),
        (result) {
          totalItems = result.totalItems;
          totalPages = result.totalPages;
          _cachedProducts.addAll(result.products);
          emit(state.copyWith(
            status: ProductStateStatus.loaded,
            products: _cachedProducts,
            hasReachedMax: result.products.length < _productLimit,
          ));
        },
      );
    } else {
      // if the state is not initial, fetch the next page of products
      // and cache the products
      currentPage++;
      final response = await getSubCategoryProductListUsecase.call(
        GetProductParams(
          slug: event.slug,
          page: currentPage,
          limit: _productLimit,
          country: event.selectedCountry,
          filter: event.filter,
        ),
      );

      response.fold(
        (exception) => emit(state.copyWith(
            status: ProductStateStatus.error, message: exception.message)),
        (result) {
          totalItems = result.totalItems;
          totalPages = result.totalPages;
          if (result.products.isEmpty) {
            emit(state.copyWith(hasReachedMax: true));
          } else {
            _cachedProducts.addAll(result.products);
            emit(state.copyWith(
              status: ProductStateStatus.loaded,
              products: List.of(state.products)..addAll(result.products),
              hasReachedMax: currentPage >= totalPages,
            ));
          }
        },
      );
    }
  }

// fetch category products with pagination support
  // since the product view requires infinite scrolling
  // we need to fetch products with pagination support
  Future<void> _fetchCategoryProducts(
    _FetchedCategoryProductList event,
    Emitter<ProductState> emit,
  ) async {
    if (state.hasReachedMax) return;

    // if the state is initial, fetch the first page of products
    // and cache the products
    if (state.status == ProductStateStatus.initial) {
      // if the cached products are not empty, emit the cached products
      if (_cachedCategoryProducts.isNotEmpty) {
        emit(state.copyWith(
          status: ProductStateStatus.loaded,
          products: _cachedCategoryProducts,
          hasReachedMax: _cachedCategoryProducts.length < _productLimit,
        ));
        return;
      }

      // if the cached products are empty, fetch the first page of products
      final response = await getCategoryProductUsecase.call(
        GetCategoryProductParams(
          slug: event.slug,
          page: currentPage,
          limit: _productLimit,
          country: event.selectedCountry,
        ),
      );

      // handle the response from the usecase and emit the state
      // with the fetched products
      response.fold(
        (exception) => emit(state.copyWith(status: ProductStateStatus.error)),
        (result) {
          totalItems = result.totalItems;
          totalPages = result.totalPages;
          _cachedCategoryProducts.addAll(result.products);
          emit(state.copyWith(
            status: ProductStateStatus.loaded,
            products: _cachedCategoryProducts,
            hasReachedMax: result.products.length < _productLimit,
          ));
        },
      );
    } else {
      // if the state is not initial, fetch the next page of products
      // and cache the products
      currentPage++;
      final response = await getCategoryProductUsecase.call(
        GetCategoryProductParams(
          slug: event.slug,
          page: currentPage,
          limit: _productLimit,
          country: event.selectedCountry,
        ),
      );

      response.fold(
        (exception) => emit(state.copyWith(
            status: ProductStateStatus.error, message: exception.message)),
        (result) {
          totalItems = result.totalItems;
          totalPages = result.totalPages;
          if (result.products.isEmpty) {
            emit(state.copyWith(hasReachedMax: true));
          } else {
            _cachedCategoryProducts.addAll(result.products);
            emit(state.copyWith(
              status: ProductStateStatus.loaded,
              products: List.of(state.products)..addAll(result.products),
              hasReachedMax: currentPage >= totalPages,
            ));
          }
        },
      );
    }
  }

  // refresh sub category products and reset the pagination
  Future<void> _onRefreshedSubCategoryProducts(
    _RefreshedSubCategoryProducts event,
    Emitter<ProductState> emit,
  ) async {
    emit(state.copyWith(status: ProductStateStatus.loading));
    currentPage = 1;
    _cachedProducts.clear();
    final result = await getSubCategoryProductListUsecase.call(GetProductParams(
      slug: event.slug,
      page: currentPage,
      limit: _productLimit,
      country: event.selectedCountry,
    ));
    result.fold(
      (exception) => emit(state.copyWith(
          status: ProductStateStatus.error, message: exception.message)),
      (result) {
        totalItems = result.totalItems;
        totalPages = result.totalPages;
        _cachedProducts.addAll(result.products);
        emit(state.copyWith(
          status: ProductStateStatus.loaded,
          products: result.products,
          hasReachedMax: result.products.length < _productLimit,
        ));
      },
    );
  }

  Future<void> _onRefreshedCategoryProducts(
    _RefreshedCategoryProducts event,
    Emitter<ProductState> emit,
  ) async {
    emit(state.copyWith(status: ProductStateStatus.loading));
    currentPage = 1;
    _cachedProducts.clear();
      final result = await getCategoryProductUsecase.call(
        GetCategoryProductParams(
          slug: event.slug,
          page: currentPage,
          limit: _productLimit,
          country: event.selectedCountry,
        ),
      );
    result.fold(
      (exception) => emit(state.copyWith(
          status: ProductStateStatus.error, message: exception.message)),
      (result) {
        totalItems = result.totalItems;
        totalPages = result.totalPages;
        _cachedProducts.addAll(result.products);
        emit(state.copyWith(
          status: ProductStateStatus.loaded,
          products: result.products,
          hasReachedMax: result.products.length < _productLimit,
        ));
      },
    );
  }
}
