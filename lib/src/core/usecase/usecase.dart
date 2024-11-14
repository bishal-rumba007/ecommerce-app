import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class UsecaseWithParam<Type, Params> {
  Future<Either<AppException, Type>> call(Params params);
}

abstract class Usecase<Type> {
  Future<Either<AppException, Type>> call();
}

class NoParams {}
