import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/profile/domain/repositories/profile_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class ChangePasswordUsecase
    extends UsecaseWithParam<String, ChangePasswordParams> {
  final ProfileRepository repository;

  ChangePasswordUsecase(this.repository);

  @override
  Future<Either<AppException, String>> call(ChangePasswordParams params) {
    return repository.changePassword(params);
  }
}

class ChangePasswordParams {
  final String oldPassword;
  final String newPassword;
  final String confirmPassword;

  ChangePasswordParams({
    required this.oldPassword,
    required this.newPassword,
    required this.confirmPassword,
  });
}
