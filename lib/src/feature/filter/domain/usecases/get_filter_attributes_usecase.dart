

import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/filter/domain/entities/attribute.dart';
import 'package:ecommerce_app/src/feature/filter/domain/repositories/filter_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class GetFilterAttributesUsecase extends Usecase<List<Attribute>>{
  final FilterRepository repository;

  GetFilterAttributesUsecase(this.repository);

  @override
  Future<Either<AppException, List<Attribute>>> call() async {
    return await repository.getAttributes();
  }
}