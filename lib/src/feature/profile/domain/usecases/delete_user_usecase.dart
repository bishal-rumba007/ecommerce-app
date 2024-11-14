import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/profile/domain/repositories/profile_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class DeleteUserUsecase extends UsecaseWithParam<String, String> {
  final ProfileRepository repository;

  DeleteUserUsecase(this.repository);

  @override
  Future<Either<AppException, String>> call(String params) async {
    return await repository.deleteUser(password: params);
  }
}
