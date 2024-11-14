import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/auth/domain/entities/user.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/login_usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/register_usecase.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class AuthRepository {
  Future<Either<AppException, User>> login(LoginParams params);
  Future<Either<AppException, String>> register(RegisterParams params);
  Future<Either<AppException, String>> verifyOtp({required String otpCode});
  Future<Either<AppException, String>> resendOtp({required email});
  Future<Either<AppException, String>> logout();
  Future<Either<AppException, String>> googleSignIn({required String idToken});
}
