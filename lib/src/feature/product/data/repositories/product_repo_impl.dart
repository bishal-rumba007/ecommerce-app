import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/product/data/datasource/product_remote_datasource.dart';
import 'package:ecommerce_app/src/feature/product/data/models/product_detail_model.dart';
import 'package:ecommerce_app/src/feature/product/data/models/product_model.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/paginated_product_model.dart';
import 'package:ecommerce_app/src/feature/product/domain/repositories/product_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDatasource datasource;

  ProductRepositoryImpl(this.datasource);

  @override
  Future<Either<AppException, List<ProductModel>>> getProducts(
      String? selectedCountry) async {
    return await datasource.getProducts(selectedCountry);
  }

  @override
  Future<Either<AppException, PaginatedProductModel>> getSubCategoryProductList(
    String slug,
    int page,
    int limit,
    String? selectedCountry,
    Map<String, dynamic>? filter,
  ) async {
    return await datasource.getSubCategoryProductList(
        slug, page, limit, selectedCountry, filter);
  }

  @override
  Future<Either<AppException, PaginatedProductModel>> getCategoryProduct(String slug, int page, int limit, String? country) async {
    return await datasource.getCategoryProduct(slug, page, limit, country);
  }

  @override
  Future<Either<AppException, ProductDetailModel>> getProductDetail(String productSlug, String? country) {
    return datasource.getProductDetail(productSlug, country);
  }
}
