


import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/paginated_product_model.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product_detail.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class ProductRepository {
  Future<Either<AppException, List<Product>>> getProducts(String? country);
  Future<Either<AppException, PaginatedProductModel>> getCategoryProduct(String slug, int page, int limit, String? country);
  Future<Either<AppException, PaginatedProductModel>> getSubCategoryProductList(String slug, int page, int limit, String? country, Map<String, dynamic>? filter,);
  Future<Either<AppException, ProductDetail>> getProductDetail(String productSlug, String? country);
}