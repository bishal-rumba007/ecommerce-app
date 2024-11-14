import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/repositories/auth_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class RegisterUsecase extends UsecaseWithParam<String, RegisterParams> {
  final AuthRepository _authRepository;
  RegisterUsecase(this._authRepository);

  @override
  Future<Either<AppException, String>> call(RegisterParams params) {
    return _authRepository.register(params);
  }
}

class RegisterParams {
  final File image;
  final String name;
  final String email;
  final String phoneNo;
  final String gender;
  final String password;
  final String password2;

  RegisterParams({
    required this.image,
    required this.name,
    required this.email,
    required this.phoneNo,
    required this.gender,
    required this.password,
    required this.password2,
  });
}
