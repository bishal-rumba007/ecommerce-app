import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product.dart';
import 'package:ecommerce_app/src/feature/product/domain/repositories/product_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class GetProductsUsecase extends UsecaseWithParam<List<Product>, String?>{
  final ProductRepository repository;

  GetProductsUsecase(this.repository);

  @override
  Future<Either<AppException, List<Product>>> call(String? params) async {
    return await repository.getProducts(params);
  }
}