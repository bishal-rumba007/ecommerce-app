

import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/filter/domain/entities/attribute.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class FilterRepository {
  Future<Either<AppException, List<Attribute>>> getAttributes();
}