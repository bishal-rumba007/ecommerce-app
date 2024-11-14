
import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/search/domain/entities/search_result.dart';
import 'package:ecommerce_app/src/feature/search/domain/repositories/search_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class SearchProductUsecase extends UsecaseWithParam<SearchResult, SearchProductParam> {
  final SearchRepository searchRepository;

  SearchProductUsecase(this.searchRepository);

  @override
  Future<Either<AppException, SearchResult>> call(SearchProductParam params) async {
    return await searchRepository.searchProducts(params.query, params.page, params.limit, params.selectedCountry);
  }
}


class SearchProductParam{
  final String query;
  final int page;
  final int limit;
  final String? selectedCountry;

  SearchProductParam({required this.query, required this.page, required this.limit, this.selectedCountry});
}