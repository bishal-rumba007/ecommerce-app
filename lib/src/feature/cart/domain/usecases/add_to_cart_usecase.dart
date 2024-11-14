import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/cart/domain/entities/cart.dart';
import 'package:ecommerce_app/src/feature/cart/domain/entities/cart_request.dart';
import 'package:ecommerce_app/src/feature/cart/domain/repositories/cart_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class AddToCartUsecase extends UsecaseWithParam<Cart, AddToCartParams> {
  final CartRepository repository;

  AddToCartUsecase(this.repository);

  @override
  Future<Either<AppException, Cart>> call(AddToCartParams params) async {
    return await repository.addToCart(params.countryId, params.cartRequests);
  }
}

class AddToCartParams {
  final String countryId;
  final List<CartRequest> cartRequests;

  AddToCartParams({required this.countryId, required this.cartRequests});
}
