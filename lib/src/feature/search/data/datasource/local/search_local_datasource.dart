

import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/search/data/datasource/local/search_local_service.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class SearchProductLocalDatasource {
  Future<Either<AppException, List<String>>> getSearchQueries();
  Future<Either<AppException, String>> saveSearchQuery(String query);
  Future<Either<AppException, String>> deleteSearchQuery(String query);
  Future<Either<AppException, String>> clearSearchQueries();
}

class SearchProductLocalDatasourceImpl implements SearchProductLocalDatasource{
  final SearchResultLocalService searchResultLocalService;

  SearchProductLocalDatasourceImpl(this.searchResultLocalService);

  @override
  Future<Either<AppException, String>> clearSearchQueries() async {
    try {
      await searchResultLocalService.clear();
      return Right('Search queries cleared successfully');
    } catch(e){
      return Left(
        AppException(
          message: 'Error clearing search queries: $e',
          statusCode: 1,
          identifier: '${e.toString()}\nSearchProductLocalDatasourceImpl.clearSearchQueries',
        ),
      );
    }
  }

  @override
  Future<Either<AppException, String>> deleteSearchQuery(String query) async {
    try {
      await searchResultLocalService.removeSearchResult(query);
      return Right('Search query deleted successfully');
    } catch(e){
      return Left(
        AppException(
          message: 'Error deleting search query: $e',
          statusCode: 1,
          identifier: '${e.toString()}\nSearchProductLocalDatasourceImpl.deleteSearchQuery',
        ),
      );
    }
  }

  @override
  Future<Either<AppException, List<String>>> getSearchQueries() async {
    try {
      final searchQueries = await searchResultLocalService.getSearchResults();
      return Right(searchQueries);
    } catch(e){
      return Left(
        AppException(
          message: 'Error getting search queries: $e',
          statusCode: 1,
          identifier: '${e.toString()}\nSearchProductLocalDatasourceImpl.getSearchQueries',
        ),
      );
    }
  }

  @override
  Future<Either<AppException, String>> saveSearchQuery(String query) async {
    try {
      await searchResultLocalService.addSearchResult(query);
      return Right('Search query saved successfully');
    } catch(e){
      return Left(
        AppException(
          message: 'Error saving search query: $e',
          statusCode: 1,
          identifier: '${e.toString()}\nSearchProductLocalDatasourceImpl.saveSearchQuery',
        ),
      );
    }
  }

   
}