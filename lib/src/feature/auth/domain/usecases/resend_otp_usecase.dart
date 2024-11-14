import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/repositories/password_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class ResendOtpUsecase extends UsecaseWithParam<String, String> {
  final PasswordRepository _passwordRepository;

  ResendOtpUsecase(this._passwordRepository);

  @override
  Future<Either<AppException, String>> call(String params) async {
    return await _passwordRepository.resendOtp(email: params);
  }
}
