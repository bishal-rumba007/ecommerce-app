import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product_detail.dart';
import 'package:ecommerce_app/src/feature/product/domain/usecases/get_product_detail_usecase.dart';

part 'product_detail_bloc.freezed.dart';
part 'product_detail_event.dart';
part 'product_detail_state.dart';

class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {

  final GetProductDetailUsecase getProductDetailUsecase;

  ProductDetailBloc({
    required this.getProductDetailUsecase,
  }) : super(const ProductDetailState.initial()){
    on<_FetchedProductDetail>(_onFetchedProductDetail);
  }

  Future<void> _onFetchedProductDetail(
    _FetchedProductDetail event,
     Emitter<ProductDetailState> emit,
     ) async {
    emit(const _Loading());
    final result = await getProductDetailUsecase.call(ProductDetailParams(event.slug, event.selectedCountry));
    result.fold(
      (failure) => emit(ProductDetailState.failure(failure.message)),
      (productDetail) => emit(ProductDetailState.success(productDetail)),
    );
  }


}
