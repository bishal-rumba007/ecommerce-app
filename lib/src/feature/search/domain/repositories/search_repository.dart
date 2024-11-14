

import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/search/domain/entities/search_result.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class SearchRepository {
  Future<Either<AppException, SearchResult>> searchProducts(
      String query, int page, int limit, String? selectedCountry);
  Future<Either<AppException, String>> saveSearchQuery(String query);
  Future<Either<AppException, List<String>>> getSearchQueries();
  Future<Either<AppException, String>> deleteSearchQuery(String query);
  Future<Either<AppException, String>> clearSearchQueries();
}