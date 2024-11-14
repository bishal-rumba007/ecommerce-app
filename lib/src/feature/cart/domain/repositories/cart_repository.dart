import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/cart/domain/entities/cart.dart';
import 'package:ecommerce_app/src/feature/cart/domain/entities/cart_request.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class CartRepository {
  Future<Either<AppException, Cart>> addToCart(
      String countryId, List<CartRequest> cartRequests);
  Future<Either<AppException, Cart>> getCart(String? countryName);
  Future<Either<AppException, Cart>> removeFromCart(String cartId, String cartItemId);
  Future<Either<AppException, Cart>> updateCart(
      String cartId, List<CartRequest> cartRequests);
  Future<Either<AppException, String>> clearCart(String cartId);
}
