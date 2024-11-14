import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/config/app_config.dart';
import 'package:ecommerce_app/src/feature/auth/data/model/user_model.dart';
import 'package:ecommerce_app/src/feature/auth/domain/entities/user.dart';
import 'package:ecommerce_app/src/feature/profile/domain/usecases/change_password_usecase.dart';
import 'package:ecommerce_app/src/feature/profile/domain/usecases/edit_user_usecase.dart';
import 'package:ecommerce_app/src/services/user_cache_service/domain/repositories/user_repository.dart';
import 'package:ecommerce_app/src/shared/data/local/token_storage_service.dart';
import 'package:ecommerce_app/src/shared/data/remote/network_service.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class ProfileDatasource {
  Future<Either<AppException, User>> getUser();
  Future<Either<AppException, User>> updateUser(
      {required EditUserInfoParams userUpdateParams});
  Future<Either<AppException, String>> deleteUser({required String password});
  Future<Either<AppException, String>> changePassword(
      ChangePasswordParams params);
}

class ProfileDatasourceImpl implements ProfileDatasource {
  final NetworkService networkService;
  final UserRepository userRepository;
  final TokenStorageService tokenStorageService;

  ProfileDatasourceImpl({
    required this.networkService,
    required this.userRepository,
    required this.tokenStorageService,
  });

  @override
  Future<Either<AppException, String>> deleteUser(
      {required String password}) async {
    try {
      final response = await networkService
          .delete(AppConfig.deleteUser, data: {"password": password});
      return response.fold(
        (exception) {
          return Left(exception);
        },
        (result) async {
          await tokenStorageService.deleteAccessToken();
          await tokenStorageService.deleteTokens();
          await userRepository.deleteUser();
          return const Right("User deleted!!");
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
  Future<Either<AppException, User>> getUser() async {
    try {
      final response = await networkService.get(
        AppConfig.user,
      );
      return response.fold(
        (exception) => Left(exception),
        (result) async {
          final user = UserModel.fromJson(result.data["user"]);
          await userRepository.saveUser(user: user);
          return Right(user);
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
  Future<Either<AppException, User>> updateUser(
      {required EditUserInfoParams userUpdateParams}) async {
    try {
      final imageUrl = userUpdateParams.image?.path;
      final formData = imageUrl == null
          ? FormData.fromMap({
              "email": userUpdateParams.email,
              "name": userUpdateParams.name,
              "phone_No": userUpdateParams.phoneNo,
              "dateofbirth": userUpdateParams.dateofbirth,
            })
          : FormData.fromMap({
              "avatar": await MultipartFile.fromFile(imageUrl),
              "email": userUpdateParams.email,
              "name": userUpdateParams.name,
              "phone_No": userUpdateParams.phoneNo,
              "dateofbirth": userUpdateParams.dateofbirth,
            });
      final response = await networkService.putMultipart(
        AppConfig.user,
        data: formData,
        additionalHeaders: {
          "Content-Type": "multipart/form-data",
        },
      );
      return response.fold(
        (exception) => Left(exception),
        (result) async {
          final user = UserModel.fromJson(result.data["user"]);
          await userRepository.saveUser(user: user);
          return Right(user);
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
  Future<Either<AppException, String>> changePassword(
      ChangePasswordParams params) async {
    try {
      final response = await networkService.post(
        AppConfig.changePassword,
        data: {
          "oldPassword": params.oldPassword,
          "newPassword": params.newPassword,
          "confirmPassword": params.confirmPassword,
        },
      );
      return response.fold(
        (exception) => Left(exception),
        (result) => Right(result.data['message']),
      );
    } catch (e) {
      return Left(AppException(
        message: "Something went wrong",
        statusCode: 1,
        identifier: '${e.toString()}\nAuthRemoteDatasource.register',
      ));
    }
  }
}
