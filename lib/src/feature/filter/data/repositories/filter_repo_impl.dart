import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/filter/data/datasource/remote/filter_datasource.dart';
import 'package:ecommerce_app/src/feature/filter/data/models/attribute_model.dart';
import 'package:ecommerce_app/src/feature/filter/domain/repositories/filter_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class FilterRepositoryImpl implements FilterRepository{
  final FilterDatasource datasource;

  FilterRepositoryImpl(this.datasource);

  @override
  Future<Either<AppException, List<AttributeModel>>> getAttributes() async{
    return await datasource.getAttributes();
  }
}