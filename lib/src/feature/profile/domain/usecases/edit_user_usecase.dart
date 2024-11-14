import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/entities/user.dart';
import 'package:ecommerce_app/src/feature/profile/domain/repositories/profile_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class EditUserInfoUsecase extends UsecaseWithParam<User, EditUserInfoParams> {
  final ProfileRepository repository;
  EditUserInfoUsecase(this.repository);

  @override
  Future<Either<AppException, User>> call(EditUserInfoParams params) async {
    return await repository.updateUserInfo(userUpdateParams: params);
  }
}

class EditUserInfoParams {
  final File? image;
  final String name;
  final String email;
  final String phoneNo;
  final String dateofbirth;

  EditUserInfoParams({
    this.image,
    required this.name,
    required this.email,
    required this.phoneNo,
    required this.dateofbirth,
  });
}
