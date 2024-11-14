import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/cart/data/datasource/remote/cart_remote_datasource.dart';
import 'package:ecommerce_app/src/feature/cart/data/models/cart_model.dart';
import 'package:ecommerce_app/src/feature/cart/data/models/cart_request_model.dart';
import 'package:ecommerce_app/src/feature/cart/domain/entities/cart_request.dart';
import 'package:ecommerce_app/src/feature/cart/domain/repositories/cart_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class CartRepositoryImpl implements CartRepository {
  final CartRemoteDatasource datasource;

  CartRepositoryImpl(this.datasource);

  @override
  Future<Either<AppException, CartModel>> addToCart(
    String countryId,
    List<CartRequest> cartRequests,
  ) async {
    final List<CartRequestModel> cartRequestModels = cartRequests
        .map((cartRequest) => CartRequestModel(
              productStockId: cartRequest.productStockId,
              quantity: cartRequest.quantity,
            ))
        .toList();
    return await datasource.addToCart(
      countryId,
      cartRequestModels,
    );
  }

  @override
  Future<Either<AppException, String>> clearCart(String cartId) async {
    return await datasource.clearCart(cartId);
  }

  @override
  Future<Either<AppException, CartModel>> getCart(String? countryName) async {
    return await datasource.getCart(countryName);
  }

  @override
  Future<Either<AppException, CartModel>> removeFromCart(String cartId, String cartItemId) async {
    return await datasource.removeFromCart(cartId, cartItemId);
  }

  @override
  Future<Either<AppException, CartModel>> updateCart(
    String cartId,
    List<CartRequest> cartRequests,
  ) async {
    final List<CartRequestModel> cartRequestModels = cartRequests
        .map((cartRequest) => CartRequestModel(
              productStockId: cartRequest.productStockId,
              quantity: cartRequest.quantity,
            ))
        .toList();
    return await datasource.updateCart(cartId, cartRequestModels);
  }
}
