import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/repositories/password_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class ForgotPasswordUsecase extends UsecaseWithParam<String, String> {
  final PasswordRepository _passwordRepository;

  ForgotPasswordUsecase(this._passwordRepository);

  @override
  Future<Either<AppException, String>> call(String params) async {
    return await _passwordRepository.forgotPasword(email: params);
  }
}
