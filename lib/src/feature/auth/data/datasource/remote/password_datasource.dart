import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/config/app_config.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/reset_password_usecase.dart';
import 'package:ecommerce_app/src/shared/data/remote/network_service.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class PasswordDatasource {
  Future<Either<AppException, String>> forgotPasword({required String email});
  Future<Either<AppException, String>> resendOtp({required String email});
  Future<Either<AppException, String>> verifyOtp({required String otpCode});
  Future<Either<AppException, String>> resetPassword(
      ResetPasswordParams params);
}

class PasswordDataSourceImpl implements PasswordDatasource {
  final NetworkService networkService;

  PasswordDataSourceImpl({required this.networkService});

  @override
  Future<Either<AppException, String>> forgotPasword(
      {required String email}) async {
    try {
      final response = await networkService.post(
        AppConfig.forgotPassword,
        data: {'email': email},
      );
      return response.fold(
        (exception) => Left(exception),
        (result) => Right(result.data["message"]),
      );
    } catch (e) {
      return Left(AppException(
        message: "Something went wrong",
        statusCode: 1,
        identifier: '${e.toString()}\nAuthRemoteDatasource.forgotPassword',
      ));
    }
  }

  @override
  Future<Either<AppException, String>> resetPassword(
      ResetPasswordParams params) async {
    try {
      final response = await networkService.post(
        AppConfig.resetPasword,
        data: {
          'user_id': params.userId,
          'newPassword': params.newPassword,
          'confirmPassword': params.confirmPassword,
        },
      );
      return response.fold(
        (exception) => Left(exception),
        (result) => Right(result.data["message"]),
      );
    } catch (e) {
      return Left(AppException(
        message: "Something went wrong",
        statusCode: 1,
        identifier: '${e.toString()}\nAuthRemoteDatasource.resetPassword',
      ));
    }
  }

  @override
  Future<Either<AppException, String>> resendOtp(
      {required String email}) async {
    try {
      final response = await networkService.post(
        AppConfig.forgotPassword,
        data: {'email': email},
      );
      return response.fold(
        (exception) => Left(exception),
        (result) => Right(result.data["message"]),
      );
    } catch (e) {
      return Left(AppException(
        message: "Something went wrong",
        statusCode: 1,
        identifier: '${e.toString()}\nAuthRemoteDatasource.forgotPassword',
      ));
    }
  }

  @override
  Future<Either<AppException, String>> verifyOtp(
      {required String otpCode}) async {
    try {
      final response = await networkService.post(
        AppConfig.forgotPasswordVerifyOtp,
        data: {"otp_code": otpCode},
      );
      return response.fold(
        (exception) => Left(exception),
        (result) => Right(result.data["user_id"].toString()),
      );
    } catch (e) {
      return Left(AppException(
        message: "Something went wrong",
        statusCode: 1,
        identifier: '${e.toString()}\nAuthRemoteDatasource.verifyOtp',
      ));
    }
  }
}
