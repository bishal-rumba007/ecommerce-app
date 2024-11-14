import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/search/domain/repositories/search_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class ClearSearchQueryUsecase extends Usecase<void> {
  final SearchRepository searchHistoryRepository;

  ClearSearchQueryUsecase(
    this.searchHistoryRepository);

  @override
  Future<Either<AppException, void>> call() async {
    return await searchHistoryRepository.clearSearchQueries();
  }
}
