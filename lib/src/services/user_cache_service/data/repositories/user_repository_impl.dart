import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/auth/data/model/user_model.dart';
import 'package:ecommerce_app/src/feature/auth/domain/entities/user.dart';
import 'package:ecommerce_app/src/services/user_cache_service/data/datasource/local/user_local_datasource.dart';
import 'package:ecommerce_app/src/services/user_cache_service/domain/repositories/user_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class UserRepositoryImpl implements UserRepository {
  final UserDataSource userDataSource;

  UserRepositoryImpl(this.userDataSource);

  @override
  Future<bool> deleteUser() {
    return userDataSource.deleteUser();
  }

  @override
  Future<Either<AppException, User>> fetchUser() {
    return userDataSource.fetchUser();
  }

  @override
  Future<bool> hasUser() {
    return userDataSource.hasUser();
  }

  @override
  Future<bool> saveUser({required UserModel user}) {
    return userDataSource.saveUser(user: user);
  }
}
