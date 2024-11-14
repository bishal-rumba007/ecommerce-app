import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/config/app_config.dart';
import 'package:ecommerce_app/src/feature/search/data/model/search_result_model.dart';
import 'package:ecommerce_app/src/feature/search/domain/entities/search_result.dart';
import 'package:ecommerce_app/src/shared/data/remote/network_service.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class SearchProductRemoteDatasource {
  Future<Either<AppException, SearchResult>> searchProducts(
      String query, int page, int limit, String? selectedCountry);
}

class SearchProductRemoteDatasourceImpl
    implements SearchProductRemoteDatasource {
  final NetworkService networkService;

  SearchProductRemoteDatasourceImpl({required this.networkService});

  @override
  Future<Either<AppException, SearchResult>> searchProducts(
      String query, int page, int limit, String? selectedCountry) async {
    try {
      final response = await networkService.get(
        AppConfig.searchProduct,
        queryParameters: {
          "search": query,
          "p": page,
          "page_size": limit,
          "country_name": selectedCountry,
        },
      );

      return response.fold(
        (exception) => Left(exception),
        (result) {
          final searchResult = SearchResultModel.fromJson(result.data);
          return Right(searchResult);
        },
      );


    } catch (e) {
      return Left(
        AppException(
          message: "Could not fetch data",
          statusCode: 1,
          identifier: "${e.toString()}\nSearchProductRemoteDatasourceImpl.searchProducts",
        ),
      );
    }
  }
}
