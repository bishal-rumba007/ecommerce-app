import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/auth/domain/entities/user.dart';
import 'package:ecommerce_app/src/feature/profile/domain/usecases/change_password_usecase.dart';
import 'package:ecommerce_app/src/feature/profile/domain/usecases/edit_user_usecase.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class ProfileRepository {
  Future<Either<AppException, User>> getUserInfo();
  Future<Either<AppException, User>> updateUserInfo(
      {required EditUserInfoParams userUpdateParams});
  Future<Either<AppException, String>> deleteUser({required String password});
  Future<Either<AppException, String>> changePassword(
      ChangePasswordParams params);
}
