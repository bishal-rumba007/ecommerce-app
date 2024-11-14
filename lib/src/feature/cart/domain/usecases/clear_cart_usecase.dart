import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/cart/domain/repositories/cart_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class ClearCartUsecase extends UsecaseWithParam<String, String> {
  final CartRepository repository;

  ClearCartUsecase(this.repository);

  @override
  Future<Either<AppException, String>> call(String params) async {
    return await repository.clearCart(params);
  }
}