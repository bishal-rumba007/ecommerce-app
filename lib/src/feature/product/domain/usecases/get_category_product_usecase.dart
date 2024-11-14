import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/paginated_product_model.dart';
import 'package:ecommerce_app/src/feature/product/domain/repositories/product_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class GetCategoryProductUsecase
    extends UsecaseWithParam<PaginatedProductModel, GetCategoryProductParams> {
  final ProductRepository repository;

  GetCategoryProductUsecase(this.repository);

  @override
  Future<Either<AppException, PaginatedProductModel>> call(
      GetCategoryProductParams params) async {
    return await repository.getCategoryProduct(params.slug, params.page, params.limit, params.country);
  }
}

class GetCategoryProductParams {
  final String slug;
  final String? country;
  final int page;
  final int limit;

  GetCategoryProductParams({
    required this.slug,
    required this.page,
    required this.limit,
    this.country,
  });
}
