import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/auth/domain/repositories/auth_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class GoogleSignInUsecase extends UsecaseWithParam<String, String>{
  final AuthRepository repository;

  GoogleSignInUsecase(this.repository);

  @override
  Future<Either<AppException, String>> call(String params) async {
    return await repository.googleSignIn(idToken: params);
  }
  
}