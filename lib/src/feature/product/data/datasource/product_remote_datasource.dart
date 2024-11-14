import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/config/app_config.dart';
import 'package:ecommerce_app/src/feature/product/data/models/product_detail_model.dart';
import 'package:ecommerce_app/src/feature/product/data/models/product_model.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/paginated_product_model.dart';
import 'package:ecommerce_app/src/shared/data/remote/network_service.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class ProductRemoteDatasource {
  Future<Either<AppException, List<ProductModel>>> getProducts(
      String? selectedCountry);
  Future<Either<AppException, PaginatedProductModel>> getCategoryProduct(
      String slug, int page, int limit, String? selectedCountry);
  Future<Either<AppException, PaginatedProductModel>> getSubCategoryProductList(
      String slug, int page, int limit, String? selectedCountry, Map<String, dynamic>? filter);
  Future<Either<AppException, ProductDetailModel>> getProductDetail(
      String productSlug, String? selectedCountry);
}

class ProductRemoteDatasourceImpl extends ProductRemoteDatasource {
  final NetworkService networkService;

  ProductRemoteDatasourceImpl(this.networkService);

  @override
  Future<Either<AppException, List<ProductModel>>> getProducts(
      String? selectedCountry) async {
    try {
      final response = await networkService.get(
        AppConfig.popularProducts,
        queryParameters: {
          "country": selectedCountry,
        },
      );
      return response.fold(
        (l) => Left(l),
        (result) {
          final data = result.data["results"] as List<dynamic>;
          final products = data.map((e) => ProductModel.fromJson(e)).toList();
          return Right(products);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: "Couldn't fetch products",
          statusCode: 1,
          identifier:
              "${e.toString()}\nProductRemoteDatasourceImpl.getProducts",
        ),
      );
    }
  }

  @override
  Future<Either<AppException, PaginatedProductModel>> getSubCategoryProductList(
    String slug,
    int page,
    int limit,
    String? selectedCountry,
    Map<String, dynamic>? filter,
  ) async {
    final queryParams = {
      "p": page,
      "page_size": limit,
      "country": selectedCountry,
    };

    if (filter != null) {
      /// Extract min_price and max_price from the Price filter
      if (filter.containsKey("Price")) {
        final priceRange = filter["Price"].split("-");
        queryParams["min_price"] = priceRange[0];
        queryParams["max_price"] = priceRange[1];
      }

      /// Add remaining filters to attributes except Price
      /// as Price is handled separately 
      queryParams["attributes"] = filter.map(
        (key, value) {
          if (key != "Price") {
            return MapEntry(key, value);
          }
          return MapEntry("", "");
        },
      );
    }

    try {
      final response = await networkService.get(
        AppConfig.subCategoryProducts(slug),
        queryParameters: queryParams,
      );
      return response.fold(
        (l) => Left(l),
        (result) {
          final data = result.data["results"] as List<dynamic>;
          final products = data.map((e) => ProductModel.fromJson(e)).toList();
          return Right(PaginatedProductModel(
            products: products,
            totalItems: result.data["total_items"],
            totalPages: result.data["total_pages"],
          ));
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: "Couldn't fetch products",
          statusCode: 1,
          identifier:
              "${e.toString()}\nProductRemoteDatasourceImpl.getSubCategoryProductList",
        ),
      );
    }
  }

  @override
  Future<Either<AppException, PaginatedProductModel>> getCategoryProduct(
    String slug,
    int page,
    int limit,
    String? selectedCountry,
  ) async {
    try {
      final response = await networkService.get(
        "${AppConfig.getCategoryProducts}/$slug/",
        queryParameters: {
          "p": page,
          "page_size": limit,
          "country": selectedCountry,
        },
      );
      return response.fold(
        (l) => Left(l),
        (result) {
          final data = result.data["results"] as List<dynamic>;
          final products = data.map((e) => ProductModel.fromJson(e)).toList();
          return Right(PaginatedProductModel(
            products: products,
            totalItems: result.data["total_items"],
            totalPages: result.data["total_pages"],
          ));
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: "Couldn't fetch products",
          statusCode: 1,
          identifier:
              "${e.toString()}\nProductRemoteDatasourceImpl.getCategoryProduct",
        ),
      );
    }
  }
  
  @override
  Future<Either<AppException, ProductDetailModel>> getProductDetail(
    String productSlug,
     String? selectedCountry,
     ) async{
      try {
        final response = await networkService.get(
          AppConfig.productDetail(productSlug),
          queryParameters: {
            "country": selectedCountry,
          },
        );
        return response.fold(
          (l) => Left(l),
          (result) {
            final data = result.data;
            final product = ProductDetailModel.fromJson(data);
            return Right(product);
          },
        );
      } catch (e) {
        return Left(
          AppException(
            message: "Couldn't fetch product detail",
            statusCode: 1,
            identifier:
                "${e.toString()}\nProductRemoteDatasourceImpl.getProductDetail",
          ),
        );
      }
  }
}
