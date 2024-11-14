import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/categories/domain/entities/category.dart';
import 'package:ecommerce_app/src/feature/categories/domain/repositories/category_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class GetCategoriesUsecase extends Usecase<List<Category>> {
  final CategoryRepository categoryRepository;

  GetCategoriesUsecase(this.categoryRepository);

  @override
  Future<Either<AppException, List<Category>>> call() async {
    return await categoryRepository.getCategories();
  }
}
