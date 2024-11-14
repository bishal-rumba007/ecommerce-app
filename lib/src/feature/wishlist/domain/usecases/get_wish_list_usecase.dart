import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/entities/wish_list.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/repositories/wish_list_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class GetWishListUsecase extends UsecaseWithParam<WishList, String?> {
  final WishListRepository repository;

  GetWishListUsecase(this.repository);

  @override
  Future<Either<AppException, WishList>> call(String? params) async {
    return await repository.getWishList(params);
  }
}