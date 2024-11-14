import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/search/domain/repositories/search_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class GetSearchHistoryUsecase extends Usecase<List<String>> {
  final SearchRepository searchRepository;

  GetSearchHistoryUsecase(this.searchRepository);

  @override
  Future<Either<AppException, List<String>>> call() async {
    return await searchRepository.getSearchQueries();
  }
}
