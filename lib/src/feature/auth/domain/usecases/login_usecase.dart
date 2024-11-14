import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/entities/user.dart';
import 'package:ecommerce_app/src/feature/auth/domain/repositories/auth_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class LoginUsecase extends UsecaseWithParam<User, LoginParams> {
  final AuthRepository _authRepository;

  LoginUsecase(this._authRepository);

  @override
  Future<Either<AppException, User>> call(LoginParams params) {
    return _authRepository.login(params);
  }
}

class LoginParams {
  final String email;
  final String password;

  LoginParams({required this.email, required this.password});
}
