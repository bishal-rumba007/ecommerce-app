import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/auth/data/datasource/remote/auth_datasource.dart';
import 'package:ecommerce_app/src/feature/auth/domain/entities/user.dart';
import 'package:ecommerce_app/src/feature/auth/domain/repositories/auth_repository.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/login_usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/register_usecase.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasource authRemoteDatasource;

  AuthRepositoryImpl({required this.authRemoteDatasource});

  @override
  Future<Either<AppException, User>> login(LoginParams params) async {
    return await authRemoteDatasource.login(params: params);
  }

  @override
  Future<Either<AppException, String>> register(RegisterParams params) async {
    return await authRemoteDatasource.register(params: params);
  }

  @override
  Future<Either<AppException, String>> verifyOtp(
      {required String otpCode}) async {
    return await authRemoteDatasource.verifyOtp(otp: otpCode);
  }

  @override
  Future<Either<AppException, String>> logout() async {
    return await authRemoteDatasource.logOut();
  }

  @override
  Future<Either<AppException, String>> resendOtp({required email}) async {
    return await authRemoteDatasource.resendOtp(email: email);
  }
  
  @override
  Future<Either<AppException, String>> googleSignIn({required String idToken}) async {
    return await authRemoteDatasource.googleSignIn(idToken: idToken);
  }
}
