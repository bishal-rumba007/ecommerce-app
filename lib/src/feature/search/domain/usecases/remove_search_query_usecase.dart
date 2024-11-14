import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/search/domain/repositories/search_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class RemoveSearchQueryUsecase extends UsecaseWithParam<void, String> {
  final SearchRepository searchHistoryRepository;

  RemoveSearchQueryUsecase(this.searchHistoryRepository);

  @override
  Future<Either<AppException, void>> call(String params) async {
    return await searchHistoryRepository.deleteSearchQuery(params);
  }
}
