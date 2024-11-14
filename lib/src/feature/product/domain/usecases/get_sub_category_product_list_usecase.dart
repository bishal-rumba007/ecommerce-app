import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/paginated_product_model.dart';
import 'package:ecommerce_app/src/feature/product/domain/repositories/product_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class GetSubCategoryProductListUsecase
    extends UsecaseWithParam<PaginatedProductModel, GetProductParams> {
  final ProductRepository productRepository;

  GetSubCategoryProductListUsecase(this.productRepository);

  @override
  Future<Either<AppException, PaginatedProductModel>> call(
      GetProductParams params) async {
    return await productRepository.getSubCategoryProductList(
      params.slug,
      params.page,
      params.limit,
      params.country,
      params.filter,
    );
  }
}

class GetProductParams {
  final String slug;
  final String? country;
  final int page;
  final int limit;
  Map<String, dynamic>? filter;

  GetProductParams({
    required this.slug,
    this.country,
    required this.page,
    required this.limit,
    this.filter,
  });
}
