import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/auth/domain/entities/user.dart';
import 'package:ecommerce_app/src/feature/profile/data/datasource/profile_datasource.dart';
import 'package:ecommerce_app/src/feature/profile/domain/repositories/profile_repository.dart';
import 'package:ecommerce_app/src/feature/profile/domain/usecases/change_password_usecase.dart';
import 'package:ecommerce_app/src/feature/profile/domain/usecases/edit_user_usecase.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  final ProfileDatasource profileDatasource;

  ProfileRepositoryImpl(this.profileDatasource);

  @override
  Future<Either<AppException, String>> deleteUser(
      {required String password}) async {
    return await profileDatasource.deleteUser(password: password);
  }

  @override
  Future<Either<AppException, User>> getUserInfo() async {
    return await profileDatasource.getUser();
  }

  @override
  Future<Either<AppException, User>> updateUserInfo(
      {required EditUserInfoParams userUpdateParams}) async {
    return await profileDatasource.updateUser(
        userUpdateParams: userUpdateParams);
  }

  @override
  Future<Either<AppException, String>> changePassword(
      ChangePasswordParams params) async {
    return await profileDatasource.changePassword(params);
  }
}
