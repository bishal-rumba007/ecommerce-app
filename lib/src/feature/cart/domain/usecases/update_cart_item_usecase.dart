import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/cart/domain/entities/cart.dart';
import 'package:ecommerce_app/src/feature/cart/domain/entities/cart_request.dart';
import 'package:ecommerce_app/src/feature/cart/domain/repositories/cart_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class UpdateCartItemUsecase extends UsecaseWithParam<Cart, UpdateCartItemParams> {
  final CartRepository repository;

  UpdateCartItemUsecase(this.repository);

  @override
  Future<Either<AppException, Cart>> call(UpdateCartItemParams params) async {
    return await repository.updateCart(params.cartId, params.cartRequests);
  }
}

class UpdateCartItemParams {
  final String cartId;
  final List<CartRequest> cartRequests;

  UpdateCartItemParams({required this.cartId, required this.cartRequests});
}
