import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/config/app_config.dart';
import 'package:ecommerce_app/src/feature/wishlist/data/models/wish_list_model.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/usecases/add_wish_list_usecase.dart';
import 'package:ecommerce_app/src/shared/data/remote/network_service.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class WishListRemoteDatasource {
  Future<Either<AppException, WishListModel>> getWishList(String? countryName);
  Future<Either<AppException, WishListModel>> addToWishList(
      AddWishListParams params);
  Future<Either<AppException, WishListModel>> deleteWishListItem(
      String wishListId, String wishListItemId);
  Future<Either<AppException, String>> clearWishList(String wishListId);
}

class WishListRemoteDatasourceImpl implements WishListRemoteDatasource {
  final NetworkService networkService;

  WishListRemoteDatasourceImpl(this.networkService);

  @override
  Future<Either<AppException, WishListModel>> addToWishList(
      AddWishListParams params) async {
    try {
      final response =
          await networkService.post(AppConfig.createWishList, data: {
        "country": params.countryId,
        "items": params.items,
      });

      return response.fold(
        (exception) => Left(exception),
        (result) {
          final data = result.data;
          final wishList = WishListModel.fromJson(data);
          return Right(wishList);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: "Failed to add to wishlist",
          statusCode: 1,
          identifier:
              "${e.toString()}\nWishListRemoteDatasourceImpl.addToWishList",
        ),
      );
    }
  }

  @override
  Future<Either<AppException, WishListModel>> getWishList(
      String? countryName) async {
    try {
      final response = await networkService.get(
        AppConfig.getWishList,
        queryParameters: {
          "country": countryName,
        },
      );

      return response.fold(
        (exception) => Left(exception),
        (result) {
          final data = result.data['wishlist'];
          final wishList = WishListModel.fromJson(data);
          return Right(wishList);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: "Error getting wishlist",
          statusCode: 1,
          identifier: "${e.toString()}\nWishListRemoteDatasource.getWishList",
        ),
      );
    }
  }

  @override
  Future<Either<AppException, WishListModel>> deleteWishListItem(
      String wishListId, String wishListItemId) async {
    try {
      final response = await networkService.delete(
        AppConfig.deleteWishListItem(wishListId),
        data: {
          "wishlist_item_id": wishListItemId,
        }
      );

      return response.fold(
        (exception) => Left(exception),
        (result) {
          final data = result.data['data'];
          final wishList = WishListModel.fromJson(data);
          return Right(wishList);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: "Failed to delete item from wishlist",
          statusCode: 1,
          identifier: "${e.toString()}\nWishListRemoteDatasourceImpl.deleteWishListItem",
        ),
      );
    }
  }

  @override
  Future<Either<AppException, String>> clearWishList(String wishListId) async {
    try {
      final response = await networkService.delete(
        AppConfig.clearWishList(wishListId),
      );

      return response.fold(
        (exception) => Left(exception),
        (result) {
          final message = result.data['message'];
          return Right(message);
        },
      );
    } catch(e) {
      return Left(
        AppException(
          message: "Failed to clear wishlist",
          statusCode: 1,
          identifier: "${e.toString()}\nWishListRemoteDatasourceImpl.clearWishList",
        ),
      );
    }
  }
}
