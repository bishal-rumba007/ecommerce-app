import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/cart/domain/entities/cart.dart';
import 'package:ecommerce_app/src/feature/cart/domain/repositories/cart_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class RemoveCartItemUsecase extends UsecaseWithParam<Cart, RemoveCartParams> {
  final CartRepository repository;

  RemoveCartItemUsecase(this.repository);

  @override
  Future<Either<AppException, Cart>> call(RemoveCartParams params) async {
    return await repository.removeFromCart(params.cartId, params.cartItemId);
  }
}

class RemoveCartParams {
 final String cartId;
  final String cartItemId;

  RemoveCartParams(this.cartId, this.cartItemId);
}