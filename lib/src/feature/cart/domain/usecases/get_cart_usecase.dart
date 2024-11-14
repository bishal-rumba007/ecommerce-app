import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/cart/domain/entities/cart.dart';
import 'package:ecommerce_app/src/feature/cart/domain/repositories/cart_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class GetCartUsecase extends UsecaseWithParam<Cart, String?> {
  final CartRepository repository;

  GetCartUsecase(this.repository);

  @override
  Future<Either<AppException, Cart>> call(String? params) async {
    return await repository.getCart(params);
  }
}