import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product_detail.dart';
import 'package:ecommerce_app/src/feature/product/domain/repositories/product_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class GetProductDetailUsecase extends UsecaseWithParam<ProductDetail, ProductDetailParams>{
  final ProductRepository repository;

  GetProductDetailUsecase(this.repository);

  @override
  Future<Either<AppException, ProductDetail>> call(ProductDetailParams params) async {
    return await repository.getProductDetail(params.productSlug, params.country);
  }
}

class ProductDetailParams {
  final String productSlug;
  final String? country;

  ProductDetailParams(this.productSlug, this.country);
}