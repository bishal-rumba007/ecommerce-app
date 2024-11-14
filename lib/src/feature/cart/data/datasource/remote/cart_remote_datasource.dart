import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/config/app_config.dart';
import 'package:ecommerce_app/src/feature/cart/data/models/cart_model.dart';
import 'package:ecommerce_app/src/feature/cart/data/models/cart_request_model.dart';
import 'package:ecommerce_app/src/shared/data/remote/network_service.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class CartRemoteDatasource {
  Future<Either<AppException, CartModel>> addToCart(
      String countryId, List<CartRequestModel> cartRequests);
  Future<Either<AppException, CartModel>> getCart(String? countryName);
  Future<Either<AppException, CartModel>> removeFromCart(String cartId, String cartItemId);
  Future<Either<AppException, CartModel>> updateCart(
      String cartId, List<CartRequestModel> cartRequests);
  Future<Either<AppException, String>> clearCart(String cartId);
}

class CartRemoeDatasourceImpl implements CartRemoteDatasource {
  final NetworkService networkService;

  CartRemoeDatasourceImpl(this.networkService);

  @override
  Future<Either<AppException, CartModel>> addToCart(
    String countryId,
    List<CartRequestModel> cartRequests,
  ) async {
    try {
      final response = await networkService.post(
        AppConfig.addToCart,
        data: {
          "country": countryId,
          "items": cartRequests.map((e) => e.toJson()).toList(),
        },
      );

      return response.fold(
        (exception) => Left(exception),
        (result) {
          final data = result.data['data'];
          final cart = CartModel.fromJson(data);
          return Right(cart);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: "Error adding to cart",
          statusCode: 1,
          identifier: "${e.toString()}\nCartRemoteDatasourceImpl.addToCart",
        ),
      );
    }
  }

  @override
  Future<Either<AppException, String>> clearCart(String cartId) async {
    try {
      final response = await networkService.delete(
        AppConfig.clearCart(cartId),
      );

      return response.fold(
        (exception) => Left(exception),
        (result) {
          return Right(result.data['message']);
        },
      );

    } catch (e) {
      return Left(
        AppException(
          message: "Error clearing cart",
          statusCode: 1,
          identifier: "${e.toString()}\nCartRemoteDatasourceImpl.clearCart",
        ),
      );
    }
  }

  @override
  Future<Either<AppException, CartModel>> getCart(
      String? countryName) async {
    try {
      final response = await networkService.get(
        AppConfig.getCart,
        queryParameters: {
          "country": countryName,
        },
      );

      return response.fold(
        (exception) => Left(exception),
        (result) {
          final data = result.data['cart'];
          final cart = CartModel.fromJson(data);
          return Right(cart);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: "Error getting cart",
          statusCode: 1,
          identifier: "${e.toString()}\nCartRemoteDatasourceImpl.getCart",
        ),
      );
    }
  }

  @override
  Future<Either<AppException, CartModel>> removeFromCart(String cartId, String cartItemId) async {
    try {
      final response = await networkService.delete(
        AppConfig.removeFromCart(cartId),
        data: {
          "cart_item_id": cartItemId,
        }
      );

      return response.fold(
        (exception) => Left(exception),
        (result) {
          final data = result.data['data'];
          final cart = CartModel.fromJson(data);
          return Right(cart);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: "Error removing from cart",
          statusCode: 1,
          identifier: "${e.toString()}\nCartRemoteDatasourceImpl.removeFromCart",
        ),
      );
    }
  }

  @override
  Future<Either<AppException, CartModel>> updateCart(
      String cartId, List<CartRequestModel> cartRequests) async {
    try {
      final response = await networkService.put(
        "${AppConfig.updateCart}/$cartId",
        data: {
          "items": cartRequests.map((e) => e.toJson()).toList(),
        },
      );

      return response.fold(
        (exception) => Left(exception),
        (result) {
          final data = result.data['data'];
          final cart = CartModel.fromJson(data);
          return Right(cart);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: "Error updating cart",
          statusCode: 1,
          identifier: "${e.toString()}\nCartRemoteDatasourceImpl.updateCart",
        ),
      );
    }
  }
}
