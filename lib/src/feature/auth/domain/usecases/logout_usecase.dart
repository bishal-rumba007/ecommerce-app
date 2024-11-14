import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/repositories/auth_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class LogoutUsecase extends Usecase {
  final AuthRepository _authRepository;

  LogoutUsecase(this._authRepository);

  @override
  Future<Either<AppException, String>> call() {
    return _authRepository.logout();
  }
}
