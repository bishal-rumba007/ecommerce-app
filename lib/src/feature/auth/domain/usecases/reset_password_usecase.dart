import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/repositories/password_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class ResetPasswordUsecase
    extends UsecaseWithParam<String, ResetPasswordParams> {
  final PasswordRepository _passwordRepository;

  ResetPasswordUsecase(this._passwordRepository);

  @override
  Future<Either<AppException, String>> call(ResetPasswordParams params) async {
    return await _passwordRepository.resetPassword(params);
  }
}

class ResetPasswordParams {
  final int userId;
  final String newPassword;
  final String confirmPassword;

  ResetPasswordParams({
    required this.userId,
    required this.newPassword,
    required this.confirmPassword,
  });
}
