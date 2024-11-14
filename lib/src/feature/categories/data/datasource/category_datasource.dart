import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/config/app_config.dart';
import 'package:ecommerce_app/src/feature/categories/data/models/category_model.dart';
import 'package:ecommerce_app/src/shared/data/remote/network_service.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class CategoryDatasource {
  Future<Either<AppException, List<CategoryModel>>> getCategories();
}

class CategoryDatasourceImpl implements CategoryDatasource {
  final NetworkService networkService;

  CategoryDatasourceImpl(this.networkService);

  @override
  Future<Either<AppException, List<CategoryModel>>> getCategories() async {
    try {
      final response = await networkService.get(AppConfig.categories);
      return response.fold(
        (exception) => left(exception),
        (result) {
          final categories = (result.data as List<dynamic>).map(
            (e) => CategoryModel.fromJson(e),
          ).toList();
          return right(categories);
        },
      );
    } on AppException catch (e) {
      return left(
        AppException(
          message: "Something went wrong while fetching categories",
          statusCode: 1,
          identifier: "${e.toString()}\nCategoryDatasourceImpl.getCategories",
        ),
      );
    }
  }
}
