import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/reset_password_usecase.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class PasswordRepository {
  Future<Either<AppException, String>> forgotPasword({required String email});
  Future<Either<AppException, String>> resendOtp({required String email});
  Future<Either<AppException, String>> verifyOtp({required String otpCode});
  Future<Either<AppException, String>> resetPassword(
      ResetPasswordParams params);
}
