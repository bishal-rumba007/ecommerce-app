import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/repositories/auth_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class VerifyOtpUsecase extends UsecaseWithParam<String, String> {
  final AuthRepository _authRepository;

  VerifyOtpUsecase(this._authRepository);

  @override
  Future<Either<AppException, String>> call(String params) async {
    return await _authRepository.verifyOtp(otpCode: params);
  }
}
