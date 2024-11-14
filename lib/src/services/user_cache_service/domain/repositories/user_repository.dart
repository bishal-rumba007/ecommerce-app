import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/auth/data/model/user_model.dart';
import 'package:ecommerce_app/src/feature/auth/domain/entities/user.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class UserRepository {
  Future<Either<AppException, User>> fetchUser();
  Future<bool> saveUser({required UserModel user});
  Future<bool> deleteUser();
  Future<bool> hasUser();
}
