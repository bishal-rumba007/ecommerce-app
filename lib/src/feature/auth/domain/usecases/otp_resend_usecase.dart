import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/repositories/auth_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class OtpResendUsecase extends UsecaseWithParam<String, String> {
  final AuthRepository authRepository;

  OtpResendUsecase(this.authRepository);

  @override
  Future<Either<AppException, String>> call(String params) async {
    return await authRepository.resendOtp(email: params);
  }
}
