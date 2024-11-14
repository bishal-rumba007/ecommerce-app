
import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/search/data/datasource/local/search_local_datasource.dart';
import 'package:ecommerce_app/src/feature/search/data/datasource/remote/search_remote_datasource.dart';
import 'package:ecommerce_app/src/feature/search/domain/entities/search_result.dart';
import 'package:ecommerce_app/src/feature/search/domain/repositories/search_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class SearchRepositoryImpl implements SearchRepository {
  final SearchProductRemoteDatasource remoteDatasource;
  final SearchProductLocalDatasource localDatasource;

  SearchRepositoryImpl({required this.remoteDatasource, required this.localDatasource});

  @override
  Future<Either<AppException, SearchResult>> searchProducts(String query, int page, int limit, String? selectedCountry) async {
    return await remoteDatasource.searchProducts(query, page, limit, selectedCountry);
  }
  
  @override
  Future<Either<AppException, String>> clearSearchQueries() async {
    return await localDatasource.clearSearchQueries();
  }
  
  @override
  Future<Either<AppException, String>> deleteSearchQuery(String query) async {
    return await localDatasource.deleteSearchQuery(query);
  }
  
  @override
  Future<Either<AppException, List<String>>> getSearchQueries() async {
    return await localDatasource.getSearchQueries();
  }
  
  @override
  Future<Either<AppException, String>> saveSearchQuery(String query) async {
    return await localDatasource.saveSearchQuery(query);
  }
}