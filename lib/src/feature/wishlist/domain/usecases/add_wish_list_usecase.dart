import 'package:fpdart/fpdart.dart';
import 'package:ecommerce_app/src/core/usecase/usecase.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/entities/wish_list.dart';
import 'package:ecommerce_app/src/feature/wishlist/domain/repositories/wish_list_repository.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

class AddWishListUsecase
    extends UsecaseWithParam<WishList, AddWishListParams> {
  final WishListRepository repository;

  AddWishListUsecase(this.repository);

  @override
  Future<Either<AppException, WishList>> call(
      AddWishListParams params) async {
    return await repository.addToWishList(params);
  }
}

class AddWishListParams {
  final String countryId;
  final List<Map<String, dynamic>> items;

  const AddWishListParams({
    required this.countryId,
    required this.items,
  });
}
