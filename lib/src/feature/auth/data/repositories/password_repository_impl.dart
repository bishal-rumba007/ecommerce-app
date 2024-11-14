import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/auth/data/datasource/remote/password_datasource.dart';
import 'package:ecommerce_app/src/feature/auth/domain/repositories/password_repository.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/reset_password_usecase.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class PasswordRepositoryImpl implements PasswordRepository {
  final PasswordDatasource passwordDatasource;

  PasswordRepositoryImpl({required this.passwordDatasource});

  @override
  Future<Either<AppException, String>> forgotPasword(
      {required String email}) async {
    return await passwordDatasource.forgotPasword(email: email);
  }

  @override
  Future<Either<AppException, String>> resendOtp(
      {required String email}) async {
    return await passwordDatasource.resendOtp(email: email);
  }

  @override
  Future<Either<AppException, String>> resetPassword(
      ResetPasswordParams params) {
    return passwordDatasource.resetPassword(params);
  }

  @override
  Future<Either<AppException, String>> verifyOtp(
      {required String otpCode}) async {
    return await passwordDatasource.verifyOtp(otpCode: otpCode);
  }
}
