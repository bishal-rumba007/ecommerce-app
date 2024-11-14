import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/entities/wish_list.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/usecases/add_wish_list_usecase.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

abstract class WishListRepository {
  Future<Either<AppException, WishList>> getWishList(String? countryName);
  Future<Either<AppException, WishList>> addToWishList(
      AddWishListParams params);
  Future<Either<AppException, WishList>> deleteWishListItem(String wishListId, String wishListItemId);
  Future<Either<AppException, String>> clearWishList(String wishListId);
}
