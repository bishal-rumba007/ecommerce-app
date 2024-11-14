import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/entities/wish_list.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/repositories/wish_list_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class DeleteWishListItemUsecase
    extends UsecaseWithParam<WishList, DeleteWishListItemParams> {
  final WishListRepository repository;

  DeleteWishListItemUsecase(this.repository);

  @override
  Future<Either<AppException, WishList>> call(DeleteWishListItemParams params) async {
    return await repository.deleteWishListItem(params.wishListId, params.wishListItemId);
  }
}

class DeleteWishListItemParams {
  final String wishListId;
  final String wishListItemId;

  DeleteWishListItemParams(this.wishListId, this.wishListItemId);
}
