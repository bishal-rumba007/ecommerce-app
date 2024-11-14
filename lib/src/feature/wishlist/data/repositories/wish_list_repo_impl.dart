import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/feature/wishlist/data/datasource/remote/wish_list_remote_datasource.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/entities/wish_list.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/repositories/wish_list_repository.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/usecases/add_wish_list_usecase.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class WishListRepositoryImpl implements WishListRepository {
  final WishListRemoteDatasource remoteDatasource;

  WishListRepositoryImpl(this.remoteDatasource);

  @override
  Future<Either<AppException, WishList>> addToWishList(AddWishListParams params) async {
    return await remoteDatasource.addToWishList(params);
  }

  @override
  Future<Either<AppException, String>> clearWishList(String wishListId) async {
    return await remoteDatasource.clearWishList(wishListId);
  }

  @override
  Future<Either<AppException, WishList>> deleteWishListItem(String wishListId, String wishListItemId) async {
    return await remoteDatasource.deleteWishListItem(wishListId, wishListItemId);
  }

  @override
  Future<Either<AppException, WishList>> getWishList(String? countryName) async {
    return await remoteDatasource.getWishList(countryName);
  }

  
}
