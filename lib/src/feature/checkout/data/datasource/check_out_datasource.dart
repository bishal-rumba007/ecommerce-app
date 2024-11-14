
import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/config/app_config.dart';
import 'package:ecommerce_app/src/feature/checkout/data/models/check_out_model.dart';
import 'package:ecommerce_app/src/shared/data/remote/network_service.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class CheckOutDatasource {
  Future<Either<AppException, CheckOutModel>> checkOut(List<Map<String, dynamic>> items);
}

class CheckOutDatasourceImpl implements CheckOutDatasource{
  final NetworkService networkService;

  CheckOutDatasourceImpl({required this.networkService});
  
  @override
  Future<Either<AppException, CheckOutModel>> checkOut(
    List<Map<String, dynamic>> items,
  ) async{
    try{
      final response = await networkService.post(
        AppConfig.checkout,
        data: {"items": items},
      );

      return response.fold(
        (exception) => Left(exception),
        (result) {
          final checkOut = CheckOutModel.fromJson(result.data);
          return Right(checkOut);
        },
      );
    } catch(e) {
      return Left(
        AppException(
          message: "Failed to check out",
          statusCode: 1,
          identifier: "${e.toString()}\nCheckOutDatasourceImpl.checkOut",
        ),
      );
    }
  }

  
}