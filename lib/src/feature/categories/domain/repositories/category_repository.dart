

import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/categories/domain/entities/category.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class CategoryRepository {
  Future<Either<AppException, List<Category>>> getCategories();
}