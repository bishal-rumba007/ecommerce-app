import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/repositories/wish_list_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class ClearWishListUsecase extends UsecaseWithParam<String, String> {
  final WishListRepository repository;

  ClearWishListUsecase(this.repository);

  @override
  Future<Either<AppException, String>> call(String params) async {
    return await repository.clearWishList(params);
  }
}