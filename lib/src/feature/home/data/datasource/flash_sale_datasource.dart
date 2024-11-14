import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/config/app_config.dart';
import 'package:ecommerce_app/src/feature/home/data/models/flash_sale_model.dart';
import 'package:ecommerce_app/src/shared/data/remote/network_service.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class FlashSaleDatasource {
  Future<Either<AppException, List<FlashSaleModel>>> getFlashSales(String? selectedCountry);
}

class FlashSaleDatasourceImpl implements FlashSaleDatasource {
  final NetworkService networkService;

  FlashSaleDatasourceImpl(this.networkService);

  @override
  Future<Either<AppException, List<FlashSaleModel>>> getFlashSales(String? selectedCountry) async {
    try {
      final queryParams = selectedCountry == null ? null : {"country": selectedCountry};
      final response = await networkService.get(
        AppConfig.flashSale,
        queryParameters: queryParams,
      );
      return response.fold(
        (l) => Left(l),
        (result) {
          final data = result.data as List<dynamic>;
          final flashSales = data.map((e) => FlashSaleModel.fromJson(e)).toList();
          return Right(flashSales);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: "Couldn't fetch flash sales",
          statusCode: 1,
          identifier: "${e.toString()}\nFlashSaleDatasourceImpl.getFlashSales",
        ),
      );
    }
  }
}
