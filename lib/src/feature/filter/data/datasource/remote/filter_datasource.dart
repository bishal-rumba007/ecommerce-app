import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/config/app_config.dart';
import 'package:ecommerce_app/src/feature/filter/data/models/attribute_model.dart';
import 'package:ecommerce_app/src/shared/data/remote/network_service.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class FilterDatasource {
  Future<Either<AppException, List<AttributeModel>>> getAttributes();
}

class FilterDatasourceImpl implements FilterDatasource {
  final NetworkService networkService;

  FilterDatasourceImpl(this.networkService);

  @override
  Future<Either<AppException, List<AttributeModel>>> getAttributes() async {
    try {
      final response = await networkService.get(AppConfig.attributeList);

      return response.fold(
        (l) => Left(l),
        (result) {
          final data = result.data as List<dynamic>;
          final attributes = data.map((e) => AttributeModel.fromJson(e)).toList();
          return Right(attributes);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: "Couldn't fetch attributes",
          statusCode: 1,
          identifier: "${e.toString()}\nFilterDatasourceImpl.getAttributes",
        ),
      );
    }
  }
}
