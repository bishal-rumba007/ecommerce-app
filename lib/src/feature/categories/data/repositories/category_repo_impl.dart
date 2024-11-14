
import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/categories/data/datasource/category_datasource.dart';
import 'package:ecommerce_app/src/feature/categories/domain/entities/category.dart';
import 'package:ecommerce_app/src/feature/categories/domain/repositories/category_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryDatasource categoryDatasource;

  CategoryRepositoryImpl(this.categoryDatasource);

  @override
  Future<Either<AppException, List<Category>>> getCategories() async {
    return await categoryDatasource.getCategories();
  }
  
}