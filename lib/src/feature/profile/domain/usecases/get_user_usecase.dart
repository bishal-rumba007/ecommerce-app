import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/entities/user.dart';
import 'package:ecommerce_app/src/feature/profile/domain/repositories/profile_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class GetUserUsecase extends Usecase<User> {
  final ProfileRepository repository;

  GetUserUsecase(this.repository);

  @override
  Future<Either<AppException, User>> call() async {
    return await repository.getUserInfo();
  }
}
