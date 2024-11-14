import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ecommerce_app/src/core/config/app_config.dart';
import 'package:ecommerce_app/src/feature/auth/data/model/user_model.dart';
import 'package:ecommerce_app/src/feature/auth/domain/entities/user.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/login_usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/usecases/register_usecase.dart';
import 'package:ecommerce_app/src/services/user_cache_service/domain/repositories/user_repository.dart';
import 'package:ecommerce_app/src/shared/data/local/token_storage_service.dart';
import 'package:ecommerce_app/src/shared/data/remote/network_service.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class AuthRemoteDatasource {
  Future<Either<AppException, User>> login({required LoginParams params});
  Future<Either<AppException, String>> register(
      {required RegisterParams params});
  Future<Either<AppException, String>> logOut();
  Future<Either<AppException, String>> verifyOtp({required String otp});
  Future<Either<AppException, String>> resendOtp({required email});
  Future<Either<AppException, String>> googleSignIn({required String idToken});
}

class AuthRemoteDatasourceImpl extends AuthRemoteDatasource {
  final NetworkService networkService;
  final TokenStorageService tokenStorageService;
  final UserRepository userRepository;

  AuthRemoteDatasourceImpl(this.tokenStorageService, this.userRepository,
      {required this.networkService});

  @override
  Future<Either<AppException, User>> login(
      {required LoginParams params}) async {
    try {
      final response = await networkService.post(
        AppConfig.login,
        data: {'email': params.email, 'password': params.password},
      );
      return response.fold(
        (exception) => Left(exception),
        (result) async {
          final user = UserModel.fromJson(result.data["user"]);
          final token = result.data["token"];
          await tokenStorageService.saveAccessToken(token["access"]);
          await tokenStorageService.saveRefreshToken(token["refresh"]);
          await userRepository.saveUser(user: user);
          return Right(user);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: "Something went wrong",
          statusCode: 1,
          identifier: '${e.toString()}\nAuthRemoteDataSource.loginUser',
        ),
      );
    }
  }

  @override
  Future<Either<AppException, String>> register(
      {required RegisterParams params}) async {
    try {
      final formData = FormData.fromMap({
        "avatar": await MultipartFile.fromFile(params.image.path),
        "email": params.email,
        "name": params.name,
        "password": params.password,
        "password2": params.password2,
        "phone_No": params.phoneNo,
        "gender": params.gender,
      });

      final response = await networkService.postMultipart(
        AppConfig.register,
        data: formData,
        additionalHeaders: {
          "Content-Type": "multipart/form-data",
        },
      );
      return response.fold(
        (exception) => Left(exception),
        (result) async {
          final message = result.data["message"];
          return Right(message);
        },
      );
    } catch (e) {
      return Left(AppException(
        message: "Something went wrong",
        statusCode: 1,
        identifier: '${e.toString()}\nAuthRemoteDatasource.register',
      ));
    }
  }

  @override
  Future<Either<AppException, String>> logOut() async {
    try {
      await Future.wait([
        tokenStorageService.deleteAccessToken(),
        tokenStorageService.deleteTokens(),
        userRepository.deleteUser(),
        GoogleSignIn().signOut(),
      ]);
      return const Right("Logged out successfully");
    } catch (e) {
      return Left(AppException(
        message: "Something went wrong",
        statusCode: 1,
        identifier: '${e.toString()}\nAuthRemoteDatasource.logOut',
      ));
    }
  }

  @override
  Future<Either<AppException, String>> resendOtp({required email}) async {
    try {
      final res = await networkService.post(
        AppConfig.resendOtp,
        data: {"email": email},
      );

      return res.fold((exception) => Left(exception),
          (result) => Right(result.data['message']));
    } catch (e) {
      return Left(AppException(
        message: "Something went wrong",
        statusCode: 1,
        identifier: '${e.toString()}\nAuthRemoteDatasource.logOut',
      ));
    }
  }

  @override
  Future<Either<AppException, String>> verifyOtp({required String otp}) async {
    try {
      final response = await networkService.post(
        AppConfig.verifyOtp,
        data: {
          "otp": otp,
        },
      );
      return response.fold(
        (exception) {
          return Left(exception);
        },
        (result) async {
          final token = result.data["tokens"];
          await tokenStorageService.saveAccessToken(token["access"]);
          await tokenStorageService.saveRefreshToken(token["refresh"]);
          return Right(result.data['message']);
        },
      );
    } catch (e) {
      return Left(AppException(
        message: "Something went wrong",
        statusCode: 1,
        identifier: '${e.toString()}\nAuthRemoteDatasource.verifyOtp',
      ));
    }
  }

  @override
  Future<Either<AppException, String>> googleSignIn(
      {required String idToken}) async {
    try {
      final response = await networkService.post(
        AppConfig.googleLogin,
        data: {
          "token": idToken,
        },
      );
      return response.fold(
        (exception) {
          return Left(exception);
        },
        (result) async {
          final userJson = result.data["user"];
          final user = UserModel.fromJson(userJson);
          await Future.wait([
            tokenStorageService.saveAccessToken(result.data["access_token"]),
            tokenStorageService.saveRefreshToken(result.data["refresh_token"]),
            userRepository.saveUser(user: user),
          ]);
          return const Right("Login successful");
        },
      );
    } catch (e) {
      return Left(AppException(
        message: "Something went wrong",
        statusCode: 1,
        identifier: '${e.toString()}\nAuthRemoteDatasource.googleSignIn',
      ));
    }
  }
}
