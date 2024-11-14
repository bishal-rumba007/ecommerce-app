import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/auth/data/model/user_model.dart';
import 'package:ecommerce_app/src/feature/auth/domain/entities/user.dart';
import 'package:ecommerce_app/src/shared/data/local/storage_service.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';
import 'package:ecommerce_app/src/shared/globals.dart';

abstract class UserDataSource {
  String get storageKey;

  Future<Either<AppException, User>> fetchUser();
  Future<bool> saveUser({required UserModel user});
  Future<bool> deleteUser();
  Future<bool> hasUser();
}

class UserLocalDatasource extends UserDataSource {
  UserLocalDatasource(this.storageService);

  final StorageService storageService;

  @override
  String get storageKey => userLocalDataSourceKey;

  @override
  Future<Either<AppException, User>> fetchUser() async {
    final data = await storageService.get(storageKey);
    if (data == null) {
      return Left(
        AppException(
          message: 'User not found',
          statusCode: 404,
          identifier: 'UserLocalDataSource',
        ),
      );
    }
    final userJson = jsonDecode(data.toString());
    return Right(UserModel.fromJson(userJson));
  }

  @override
  Future<bool> saveUser({required UserModel user}) async {
    final userJson = user.toJson();
    return await storageService.set(storageKey, jsonEncode(userJson));
  }

  @override
  Future<bool> hasUser() async {
    return await storageService.has(storageKey);
  }

  @override
  Future<bool> deleteUser() async {
    return await storageService.remove(storageKey);
  }
}
